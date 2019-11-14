<?php

namespace App\Repositories\Eloquent;

use App\Repositories\Contracts\ApiRepositoryInterface;
use App\Repositories\Contracts\RepositoryInterface;
use Illuminate\Container\Container as App;
use Illuminate\Database\Eloquent\Model;

/**
 * Repository 抽象类.
 *
 * Class Repository
 */
abstract class Repository implements RepositoryInterface, ApiRepositoryInterface
{
    private $app;
    protected $model;
    protected $userInfo;
    protected $statusCode = 200;

    /**
     * 依赖注入 Container与创建模型.
     *
     * Repository constructor.
     *
     * @param $app
     */
    public function __construct(App $app)
    {
        $this->app = $app;
        $this->makeModel();
    }

    /**
     * 指定模型名称.
     *
     * @return mixed
     */
    abstract public function model();

    /**
     * 根据模型名创建Eloquent ORM 实例.
     *
     * @return bool|\Illuminate\Database\Eloquent\Builder
     */
    public function makeModel()
    {
        $model = $this->app->make($this->model());
        if (!$model instanceof Model) {
            return false;
        }

        return $this->model = $model;
    }

    /*
    |--------------------------------------------------------------------------
    | 数据库相关
    |--------------------------------------------------------------------------
    |
    | 含有数据库的CRUD操作,分页等
    |
    |
    */

    /**
     * 根据主键查找数据.
     *
     * @param $id
     * @param array $columns
     *
     * @return mixed
     */
    public function find($id, $columns = array('*'))
    {
        return $this->model->find($id, $columns);
    }

    /**
     * 根据指定键与值查找数据.
     *
     * @param $attribute
     * @param $value
     * @param array $columns
     *
     * @return mixed
     */
    public function findBy($attribute, $value, $columns = array('*'))
    {
        return $this->model->where($attribute, '=', $value)->first($columns);
    }

    /**
     * 获取所有数据.
     *
     * @param array $columns
     *
     * @return mixed
     */
    public function all($columns = array('*'))
    {
        return $this->model->get($columns);
    }

    /**
     * 预加载.
     *
     * @param $relations
     *
     * @return mixed
     */
    public function with($relations)
    {
        return $this->model->with(is_string($relations) ? func_get_args() : $relations);
    }

    /**
     * 批量创建.
     *
     * @param array $data
     *
     * @return mixed
     */
    public function create(array $data)
    {
        return $this->model->create($data);
    }

    /**
     * 根据主键更新.
     *
     * @param array $data
     * @param $id
     * @param string $attribute
     *
     * @return mixed
     */
    public function update(array $data, $id, $attribute = 'id')
    {
        return $this->model->where($attribute, '=', $id)->update($data);
    }

    /**
     * 根据主键删除数据.
     *
     * @param $ids
     *
     * @return mixed
     */
    public function delete($ids)
    {
        return $this->model->destroy($ids);
    }

    /**
     * @param $id
     * Description : 查找单条记录
     */
    public function getById($id, $columns = array('*'))
    {
        $row = $this->model->whereIdAndDeleted($id, 0)->first($columns);

        return $row;
    }

    /**
     * 获取分页数据.
     *
     * @param int   $perPage
     * @param array $columns
     *
     * @return mixed
     */
    public function paginate($perPage = 10, $columns = array('*'))
    {
        return $this->model->paginate($perPage, $columns);
    }
}
