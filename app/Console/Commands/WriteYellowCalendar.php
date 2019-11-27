<?php

namespace App\Console\Commands;

use Illuminate\Console\Command;
use DB;

class WriteYellowCalendar extends Command
{
    /**
     * The name and signature of the console command.
     *
     * @var string
     */
    protected $signature = 'write:yellowCalendar';

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
        $this->writeCalendar();
    }

    private function writeCalendar()
    {
        $appkey = "d063a846103b0549502b8567adabe6e2";
        $params = array(
            "key" => $appkey,
            "date" => Date('Y-m-d', time()),
        );
        $url = "http://v.juhe.cn/laohuangli/d";
        $paramstring = http_build_query($params);
        $content = juhecurl($url,$paramstring);
        $result = json_decode($content,true);
        if($result){
            if($result['error_code']=='0'){
                $arr = [
                    'yangli' => $result['result']['yangli'],
                    'yinli' => $result['result']['yinli'],
                    'wuxing' => $result['result']['wuxing'],
                    'chongsha' => $result['result']['chongsha'],
                    'baiji' => $result['result']['baiji'],
                    'jishen' => $result['result']['jishen'],
                    'yi' => $result['result']['yi'],
                    'xiongshen' => $result['result']['xiongshen'],
                    'ji' => $result['result']['ji'],
                    'created_at' => date('Y-m-d H:i:s', time())
                ];
                $res = DB::table('cms_yellow_calendar')->insert($arr);
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
