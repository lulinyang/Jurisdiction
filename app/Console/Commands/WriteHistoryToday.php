<?php

namespace App\Console\Commands;

use Illuminate\Console\Command;
use DB;

class WriteHistoryToday extends Command
{
    /**
     * The name and signature of the console command.
     *
     * @var string
     */
    protected $signature = 'write:historyToday';

    /**
     * The console command description.
     *
     * @var string
     */
    protected $description = 'Command description';

    /**
     * Create a new command instance.
     *
     * @return void
     */
    public function __construct()
    {
        parent::__construct();
    }

    /**
     * Execute the console command.
     *
     * @return mixed
     */
    public function handle()
    {
        $this->historyToday();
    }

    private function historyToday()
    {
        $appkey = "6822593cc5c48bb8e5447ef088ac5f3e";
        $dateArr = explode("-", Date('Y-m-d', time()));
        $params = array(
            "key" => $appkey,
            "v" => "1.0",//版本，当前：1.0
            "month" => $dateArr[1],//月份，如：10
            "day" => $dateArr[2],//日，如：1
        );
        $url = "http://api.juheapi.com/japi/toh";
        $paramstring = http_build_query($params);
        $content = juhecurl($url,$paramstring);
        $result = json_decode($content,true);
        if($result){
            if($result['error_code']=='0'){
                $arr = [];
                foreach($result['result'] as $value) {
                    $item = [];
                    $item["title"] = $value['title'];
                    $item["pic"] = $value['pic'];
                    $item["year"] = $value['year'];
                    $item["month"] = $value['month'];
                    $item["day"] = $value['day'];
                    $item["des"] = $value['des'];
                    $item["lunar"] = $value['lunar'];
                    $item["created_at"] = date('Y-m-d H:m:s', time());
                    $arr[] = $item;
                }
               
                $res = DB::table('cms_history_today')->insert($arr);
                echo 'true';
                // return returnApi($res);
            }else{
                echo $result['error_code'].":".$result['reason'];
            }
        }else{
            echo "请求失败";
        }
    }
}
