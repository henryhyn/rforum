# 论坛

## 开发

依赖 MySQL 数据库, 需要事先安装.
克隆完代码以后, 编辑 `config/database.yml`, 根据实际情况, 修改 MySQL 登陆密码.
转到终端, 执行如下命令.

```
cd forum
sudo gem install rails -v 4.1.2
sudo bundle install
rake db:create
sh script/reset
rails s
```

打开浏览器, 转到 [localhost:3000](http://localhost:3000)
