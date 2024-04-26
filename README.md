 

<h1 align="center">🔥 Dailyfresh-FullStack 🔥</p>
这是基于一个 ☛全栈☚ B2C模式的电商毕业计项目，也是我的Python语言入门项目, web后台基于Django Rest Framework + Python3.6,前后端分离，前端使用Vue2框架开发。

> 原项目：[BeanWei/Dailyfresh-B2C](https://github.com/BeanWei/Dailyfresh-B2C/tree/master)
>
> 感谢[BeanWei](https://github.com/BeanWei)大佬提供的的源码，在此项目基础上，修复很多Bug，并使得程序完美运行起来是实属的不易。。。
>
> 此项目非常适合入门Python后端DRF（Django Rest Framework）和 Vue前端学习入门，本项目完成与2022年5月，那时候工作太过繁忙，一直没机会将它开源出来，现决定开源出来供大家学习，禁止商用！
>
> 如果你对此项目有浓厚的兴趣，欢迎提交requests帮助修复和完善。
>
> 你可能还需要一些资料，详见[我的博客](https://ding-f.gitee.io/)：

## 系统运行环境

### 系统

Arch Linux/Windows 11

### 后端

- MySQL-v8.0.33
- Python-v3.6
- MySQL Workbench-v8.0
- PyCharm 2023.1.2 (Professional Edition)

### 前端

- NodeJS-v16.9.1
- npm-v8.19.2
- Visual Studio Code-1.77.3



## 部署说明

### 后端

#### 安装MySQL

在你的Windows / Linux环境中安装Docker,安装成功执行以下命令：

**拉取MySQL镜像**

```shell
docker pull mysql:8.0.33-debian
```

**启动容器**

创建一个名称为ebian-mysql8的MySQL容器，密码123456,映射端口从虚拟机3306映射到物理机的3305

```shell
docker run -d --name debian-mysql8 -e MYSQL_ROOT_PASSWORD=123456 -p 3305:3306 <镜像ID>
```

**配置容器**

要设置允许root在任意主机登陆

```shell
docker exec -it <容器ID> bash
```

此时已进入容器

```shell
mysql -u root -p
```

配置

```shell
ALTER USER 'root'@'%' IDENTIFIED WITH mysql_native_password BY '123456';
GRANT ALL PRIVILEGES ON *.* TO 'root'@'%';
```

#### 安装Pytho3.6

**Windows**

[Windows下载Python3.6](https://www.python.org/downloads/windows/)

Arch Linux

```shell
yay -S python36
```

#### 打开PyCharm

导入项目`/Dailyfresh-B2C/Backend/`

**点击Terminal**

![image-20230611214733146](/README/image-20230611214733146.png)

#### 创建虚拟环境



**执行**

```shell
python -m venv venv
```

执行完成项目根目录会出现venv目录

**激活虚拟环境**

```shell
 source venv/bin/activate 
```

成功后会命令行开头出现字符`(venv)`

#### 安装依赖

**执行**

```shell
pip install -i https://pypi.tuna.tsinghua.edu.cn/simple/ -r requirements.txt 
```

等待完成

**配置Pycharm**

![image-20230611215436208](/README/image-20230611215436208.png)

- 点击右上方小三角形
- 点击Edit Configrations

![image-20230611215605931](/README/image-20230611215605931.png)

- 配置成以上的设置

#### 启动后端

![image-20230611215701511](/README/image-20230611215701511.png)

### 前端

#### 安装NodeJS

注意版本v16.9.1，推荐使用NVM（[我的博客：NVM](https://ding-f.gitee.io/2024/02/20/nvm)），三种系统都在，找到对应版本号下载安装

[Node官网：Downloads NodeJS](https://nodejs.org/en/download)

#### 打开Visual Studio Code

**执行**

`Ctrl+J`出现底部命令行

```shell
npm install 
```

等待安装完成，如果速度慢建议更换国内源

**点击左下角**

![image-20230611220522873](/README/image-20230611220522873.png)

等待编译完成

**启动前端**

打印以下证明前端已启动

![image-20230611220604955](/README/image-20230611220604955.png)

**浏览器访问**

用户名：zhangpei

密码：1234567890

- 主页：<http://localhost:8080/>

- XAdmin：<http://127.0.0.1:8000/xadmin/>

- API文档：<http://127.0.0.1:8000/docs/>
