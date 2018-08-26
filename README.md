# 商品服务

商品服务(Catalogue Service)用于商品列表、商品详情的展示等功能。采用Java Chassis进行开发，数据库采用MySQL。由于基于Java Chassis开发，商品服务的运行依赖于服务中心。

## 1. 开发环境准备

在开始使用Java Chassis 开发Catalogue服务前，需要准备开发环境，具体内容包括：

* 安装 JDK 1.8 
* 安装 Maven 3.X
* 安装 Docker（可选，方便本地调试）
* 安装 MySQL （也可通过docker启动）

## 2. 构建和打包

* 生成jar包

```
    mvn clean package
```

此命令会下载项目的依赖包，并在target目录下生成catalogue.jar。

* 构建catalogue镜像（可选）

商品服务的Dockerfile位于代码根目录下，运行以下命令即可生成docker镜像。

```
	docker build -t catalogue .
```

* 构建数据库镜像（可选）

数据库的Dockerfile位于data目录下，运行以下命令即可生成数据库docker镜像。

```
	docker build -t catalogue-db ./data/
```

## 3. 运行商品服务

### 以docker-compose方式运行（推荐）

```
    docker-compose up
```

运行过程中能够看到，docker-compose会下载服务中心镜像servicecomb/service-center，生成数据库镜像catalogue-db，生成商品服务镜像catalogue-service。

### 以原生方式运行

1. 数据库准备

数据库脚本dump.sql位于data目录下，启动MySQL服务后运行dump.sql脚本即可创建表并预置商品数据。

或通过上文中构建好的数据库镜像启动：

```
docker run -d -p 3306:3306 catalogue-db
```

2. 启动服务中心

```
docker run -d -p 30100:30100 servicecomb/service-center:latest
```

3. 运行服务

```
java -jar  -DMYSQL_HOST=127.0.0.1 -DSC_HOST=127.0.0.1 catalogue.jar
```

或

```
docker run -e SC_HOST=127.0.0.1 -e MYSQL_HOST=127.0.0.1 -p 7071:7071 catalogue
```

商品服务运行依赖于数据库及服务中心，分别通过MYSQL_HOST、DCS_HOST环境变量进行配置。

### 接口测试：

* 获取商品列表：`curl http://localhost:7071/catalogues`
* 获取单个商品详情：`curl http://localhost:7071/catalogues/a0a4f044-b040-410d-8ead-4de0446aec7e`

此处a0a4f044-b040-410d-8ead-4de0446aec7e为测试商品id，商品id可从商品列表中获取。

商品服务端口为7071，可在src/main/resources/microserivce.yaml中进行修改：

```
rest:
    address: 0.0.0.0:7071
```

## 4. FAQ

* 是否注册到注册中心：`curl -H "X-Domain-Name:default" http://127.0.0.1:30100/registry/v3/microservices  | jq -r`

```json
  {
      "serviceId": "a4f5bdbca93a11e8b0f90242ac120002",
      "appId": "sockshop",
      "serviceName": "catalogue",
      "version": "0.0.1",
      "level": "FRONT",
      "status": "UP",
      ...
```
* 是否有正常运行的实例：`  curl -X GET -H "X-ConsumerId: a4f5bdbca93a11e8b0f90242ac120002" -H "X-Tenant-Name: default" http://127.0.0.1:30100/registry/v3/microservices/a4f5bdbca93a11e8b0f90242ac120002/instances | jq -r`

```json
{
  "instances": [
    {
      "instanceId": "e612bcbaa94011e88a170242ac120002",
      "serviceId": "a4f5bdbca93a11e8b0f90242ac120002",
      "endpoints": [
        "rest://172.22.0.4:7071"
      ],
      "hostName": "11b634ed4c70",
      "status": "UP",
      ...
```
