<?php
return [
    'pay' => [
        // APPID
        'app_id' => '2016101900726118',
        // 支付宝 支付成功后 主动通知商户服务器地址  注意 是post请求
        'notify_url' => 'https://api.lyang.top/api/paySuccess',
        // 支付宝 支付成功后 回调页面 get
        'return_url' => 'https://api.lyang.top/api/paySuccessPage',
        // 公钥（注意是支付宝的公钥，不是商家应用公钥）
        'ali_public_key' => 'MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQDIgHnOn7LLILlKETd6BFRJ0GqgS2Y3mn1wMQmyh9zEyWlz5p1zrahRahbXAfCfSqshSNfqOmAQzSHRVjCqjsAw1jyqrXaPdKBmr90DIpIxmIyKXv4GGAkPyJ/6FTFY99uhpiq0qadD/uSzQsefWo0aTvP/65zi3eof7TcZ32oWpwIDAQAB',
        // 加密方式： **RSA2** 私钥 商家应用私钥
        'private_key' => 'MIIEpAIBAAKCAQEAmsDDrkLi2x6psxsfeQABih4/1K0qq3N0sf78Ub7IGCZKA+q3lPG6F3SxdvdizJS4/NfaOgnt3WHj4rntx1MNG5ia+BSG7BKJzlghoEno6QV61sY0X9s5FOMbZatOo2m8UQFlxWlCTA6owuuPaLw7wyNa4avWtHX0A1o7I5Qx9vT660m19pteKCy/RzaY2ZU4Kh5BKiHxOLE4UeLHkd/ty1vX+ht6bW3rtpBnLGsUgx5R1TR+CZOoeB5SBJdcvc0OTrJ6jBrawNpUeLTBYkHRX5duL/alRp1Evm2DTZmYmXpFRJksP8gdjXB2o7FHTdVlYlecYlaU4pd2lvnZM1YrfQIDAQABAoIBAFg8wVaDXMaD3U76kB92GWqfhNXHRyUrV8aGFWim14CtlFZXZwXOLsVhDC9BL1xnEHNawFuHfdFVF5MXYLTebgLmKLZ7PdMtXtYA+mtiuSLktP3xVbuyTAHU3LJD0zrp9y5ZFaZSNjMXyLIbjlGxwoGpjxBN4sZS2yduM3o97Z9Zetl6z1BQ7fb6HaO2OXb09trxsg9io3dSZer4CbmFtLeZ7XdjfZvFUWQ031RV3ziFZALYnMl5sAgR4HZiQPzec+GjUkI4i8T+zOtdO73SnHbpEZedH24QlmqOsfCwjcVRXU3jnX7kFR8lz5x43Rm8gvI46gVM4poSdfbfd616BgECgYEA5TnpDiG1INC9SREdTQHEwHOPYsLbiTNdCSXB/WRK3/PiVOy/6pSWp86VjbQlcsHVcrYolcQrpSb4hj3frjCCl3I7NXZRVdtcBF2IpFfRI2agxzK4Hdp6/UUBJB/lGGpwUj+JRqWgtjMttNqZHd/3NpXPgFbrTfggqs/q/mnuoU0CgYEArNQH+UCXjLOedDLIshN0TGqz1CWxzprM1OytK9UE7Pn1Aq/aBT9A8361fs/fHqtip33GXFYh9dKWQTloi8GGas2ebfzGvN7YIJME0s/rGeAnNQrYUmcle2i6KnWJ+0sNAB+jB0p0bw7h0C8V52y0t5qhrMzWeozuDd1hu0tImvECgYEA0NBZSsNQEg21cPtDOuRSjJJ42xnxDWIZ7XxU5HTZdHviAUUOay5is4kQWd7ygkCrJe1kuVHUBIWkvf1dZ3vPaxDneQNIgrLqdxuRn0xUOzCBZBUC/kcJ5PBYYsUfWIeVvIcekZnN9kxW5bqA42Mj+7irJxmHDybq80+mnY54kL0CgYAg1FIDbdqb1o7V4cOv1/Qyg95PAS4KYetg0uh+OAOshDqfXQocDwzmc/5D7Xajm8isqj6g0Ze3213BXAdY7NT8urxKhka2H9qMLYEwDmDJVIP+FmZLGN7M13Ltl9AzFOmOSXQtcV42rmwEoL0XbdXSPqRRb8OaGeUqaxAihMVw8QKBgQDMVdFe2F3/0qqvNHv+xsSDZKz31WRTPAoMjunSfDi+maAEY5A3PW2i/ctlqqngy1uwlmWX1i0ESZZl/UexA7v9ZAW60/mSr/OGtd2RT+J7inCx2WVPSZG+85q3z9N9qdQqM1eFFo+ad8quZxO7qIrhexE6KBFWROZPnfjgUHiW5g==',
        'log' => [ // optional
            'file' => '../storage/logs/alipay.log',
            'level' => 'info', // 建议生产环境等级调整为 info，开发环境为 debug
            'type' => 'single', // optional, 可选 daily.
            'max_file' => 30, // optional, 当 type 为 daily 时有效，默认 30 天
        ],
        'http' => [
            'timeout' => 5.0,
            'connect_timeout' => 5.0,
            // 更多配置项请参考 [Guzzle](https://guzzle-cn.readthedocs.io/zh_CN/latest/request-options.html)
        ],
        'mode' => 'dev', // optional,设置此参数，将进入沙箱模式
    ]
];