### 堡垒机
````
地址: http://47.109.32.40/core/auth/login/
admin/gJXCPBT64yblcAdR
````

### 统一服务器开发者账号
```bash
# dev/wO$nUgxexBdPQ%ru
# 创建命令
useradd  -p `openssl   passwd   -1  -salt  'mdd'  wO$nUgxexBdPQ%ru` dev
# 赋予sudo权限
## 编辑sudoers
vim /etc/sudoers
## 添加规则
### 指定用户
dev  ALL=(ALL)   ALL
### 指定用户组
%dev  ALL=(ALL)  NOPASSWD: ALL
```

### 阿里云短信
````
 alismsverify: #阿里云短信配置，在阿里云申请成功后修改以下四项，必须修改
 accessKeyId: LTAI5tQoTDFBHVjiU2GSUZmp
 accessKeySecret: aq3rSXEAZgnlX4zVHTlplpr5FbnOV0
 signName: 未闻花名
 verificationCodeTemplateCode: SMS_109545451
 superCode: 666666 #超级验证码，建议修改掉，收不到短信验证码时可以用此替代
````
### 服务器端口配置
|  服务 | 容器端口 | nodePort 端口  |
| ------------ | ------------ |
| mysql | | 31000, 31001  |
| etcd  | |32745 , 32746  |
| redis | |30003 |
|goapi|11688 |31492 |
|imGrpc|21063|31600|
|rocketMQGrpc|21064|31601|
|userGrpc|21066|31602|
|moneyGrpc|21067|31603|
|nginx|80|31011|
|管理后台||31012|

### mysql
````
mdd_api_read / qqg0DHA8B8aIWExj
````