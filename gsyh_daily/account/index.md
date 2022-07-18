#### 账号
>超密: bScF4RoOgl20

>3e3e运营后台  wangtao1 wt0223

>go2运营后台 wangtao1 Wt7740+123123

jira wangtao1:ck,./931009
wiki  账号：wangtao1  密码： wangtao@2048**

#### 线上库
	mysql -u wangtao -P 40003 -h 172.16.2.222 --default-character-set=utf8 -p wangtao1@go2.cn


查看docker日志
````
docker logs docker-php-env_user-service_1
````
#### composer 
````
composer self-update --1 //回滚至v1
composer config --global --auth github-oauth.github.com 55f08163d7d807456b12e2860146454cd61d4c84
````

#### redis配置:
````
'redis_in_ali' => [
        'host' => '47.99.43.230',
        'port' => '6379',
        'db' => 3,
        'password' => '',
    ]

'redis' => [
            'class'       => 'app\components\Redis',
            'host'        => '192.168.10.51',
            'port'        => 27004,
            'db'          => 0,
            'password'    => '',
   ],
````

#### ssh
````
//测试服服务 go2test / www.go2.cn
alias gss150='ssh go2test@192.168.10.150'
alias gss151='ssh go2test@192.168.10.151'
//go2lanlinxi / www.go2.cn
alias gss13='ssh go2lanlinxi@192.168.10.13'
//跳板机 地址：http://118.31.167.83/auth/login/  用户：wangtao1 密码：Wangtao@2048!!
alias tbj='ssh wangtao1@118.31.167.83 -p 2222'
//数据库
alias db_big='mysql -h 192.168.10.2 -P 40003 -uroot --default-character-set=utf8 -pleweisa'
````