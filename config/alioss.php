<?php

return [
    'isInternal' => env('IS_INTERNAL', null),
    'ossCity' => env('ALIOSS_CITY', null),
    'ossNetworkType' => env('ALIOSS_NETWORK_TYPE', NULL),
    'ossServer' => env('ALIOSS_SERVER', null),                      // 外网
    'ossServerInternal' => env('ALIOSS_SERVERINTERNAL', null),      // 内网
    'AccessKeyId' => env('ALIOSS_KEYID', null),                     // key
    'AccessKeySecret' => env('ALIOSS_KEYSECRET', null),             // secret
    'BucketName' => env('ALIOSS_BUCKETNAME', null)                  // bucket
];