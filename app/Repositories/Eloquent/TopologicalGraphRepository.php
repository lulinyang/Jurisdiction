<?php

declare(strict_types=1);

namespace App\Repositories\Eloquent;

use GuzzleHttp\Client;
use Illuminate\Container\Container as App;
use DB;

class TopologicalGraphRepository extends Repository
{
    public function __construct(Client $http, App $app)
    {
        parent::__construct($app);
        $this->http = $http;
    }

    /**
     * Specify Model class name.
     *
     * @return string
     */
    public function model()
    {
        return 'App\\Models\\TopologicalGraph';
    }

    public function getPedigreeTree($request)
    {
        $surnameId = $request->all()['surname_id'];
        $pedigree = DB::table('cms_topological_graph')
                ->orderBy('top', 'desc')
                ->orderBy('sort', 'desc')
                ->where('surname_id', $surnameId)
                ->get()
                ->map(function ($value) {
                    return (array) $value;
                }
                )->toArray();
        $data = $this->getTree($pedigree);

        return collection($data);
    }

    public function addPedigree($request)
    {
        $data = $request->all();
        $isTop = isset($data['isTop']) ? $data['isTop'] : false;
        if (!$isTop) {
            $pidLevel = explode('-', $data['pidLevel']);
            $data['pid'] = $pidLevel[0];
            $data['level'] = $pidLevel[1];
        }
        if (!isset($data['id'])) {
            $res = $this->model->create($data);

            return $this->respondWith(['created' => (bool) $res, 'pedigree' => $res]);
        } else {
            if (!$isTop) {
                $arr = [
                    'title' => $data['title'],
                    'sort' => $data['sort'],
                    'member_id' => $data['member_id'],
                    'mate_id' => $data['mate_id'],
                ];
            } else {
                $arr = [
                    'top' => $data['top'],
                ];
            }
            $res = $this->update($arr, $data['id']);

            return $this->respondWith(['updated' => (bool) $res, 'pedigree' => $res]);
        }
    }

    private function getTree($data, $pid = 0)
    {
        $tree = array();
        foreach ($data as $k => $v) {
            //父亲找到儿子
            if ($v['pid'] == $pid) {
                $v['top'] = $v['top'] ? true : false;
                $v['children'] = $this->getTree($data, $v['id']);
                $tree[] = $v;
                //unset($data[$k]);
            }
        }

        return $tree;
    }

    public function getPedigreeAll($request)
    {
        $surnameId = $request->all()['surname_id'];
        $pedigree = DB::table('cms_topological_graph')
                ->orderBy('top', 'desc')
                ->orderBy('sort', 'desc')
                ->where('surname_id', $surnameId)
                ->get()
                ->map(function ($value) {
                    return (array) $value;
                }
                )->toArray();
        $data = $this->cateSort($pedigree);

        return collection($data);
    }

    private function cateSort($array, $pid = 0, $level = 0)
    {
        //声明静态数组,避免递归调用时,多次声明导致数组覆盖
        static $list = [];
        foreach ($array as $key => $value) {
            //第一次遍历,找到父节点为根节点的节点 也就是pid=0的节点
            if ($value['pid'] == $pid) {
                //父节点为根节点的节点,级别为0，也就是第一级
                // $value['level'] = $level;
                $value['title'] = str_repeat(' --', $value['level']).$value['title'];
                //把数组放到list中
                $list[] = $value;
                //把这个节点从数组中移除,减少后续递归消耗
                unset($array[$key]);
                //开始递归,查找父ID为该节点ID的节点,级别则为原级别+1
                $this->cateSort($array, $value['id'], $level + 1);
            }
        }

        return $list;
    }

    public function deletePedigree($request)
    {
        $data = $request->all();

        $id = $data['id'];
        $surname_id = $data['surname_id'];
        // $res = $this->findBy('pid', $id);
        $res = DB::table('cms_topological_graph')
            ->where(['pid' => $id, 'surname_id' => $data['surname_id']])
            ->first();
        if ($res) {
            return $this->respondWith(['result' => false, 'message' => '下面还有子孙，不能删除！']);
        }

        $res = $this->delete($id);
        $msg = $res ? '删除成功！' : '下面还有子孙，不能删除！';

        return collection(['result' => (bool) $res, 'message' => $msg]);
    }
}
