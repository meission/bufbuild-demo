## bufbuild-demo

[![GitHub Actions](https://github.com/bufbuild/buf-example/workflows/CI/badge.svg)](https://github.com/meission/bufbuild-demo/actions?workflow=CI)

这是一个使用 [buf build](github.com/bufbuild/buf) 工具管理 protobuf 协议文件的 demo .

buf build 工具依赖于go 1.16
项目地址: https://github.com/bufbuild/buf
文档地址: https://docs.buf.build/


### 目录结构

```
├── README.md
├── api
│   ├── google
│   │   └── api
│   │       ├── annotations.pb.go
│   │       └── http.pb.go
│   └── helloworld
│       ├── hello_world.pb.go
│       ├── hello_world.pb.gw.go
│       └── hello_world_grpc.pb.go
├── buf.gen.yaml
├── buf.yaml
├── go.mod
├── go.sum
├── main.go
├── makefile
└── proto
    └── api
        ├── google
        │   └── api
        │       ├── annotations.proto
        │       └── http.proto
        └── helloworld
            └── hello_world.proto
    
```

|  目录   | 说明  |
|  ----  | ----  |
| proto  | proto 协议文件目录 |
| api  | proto对应的生成代码目录 |
| buf.yaml  | 配置proto目标路径 |
| buf.gen.yaml  | 配置proto目标生成文件 |

buf.gen.yaml 配置多语言样例

```
	version: v1beta1
	plugins:
	- name: java
		out: api
	- name: cpp
		out: api
    
```

### 环境安装

```
	go get github.com/golang/protobuf/protoc-gen-go
	go get google.golang.org/grpc/cmd/protoc-gen-go-grpc
	go get github.com/bufbuild/buf/cmd/buf
	go get github.com/bufbuild/buf/cmd/protoc-gen-buf-breaking
	go get github.com/bufbuild/buf/cmd/protoc-gen-buf-check-breaking
	go get github.com/bufbuild/buf/cmd/protoc-gen-buf-check-lint
	go get github.com/bufbuild/buf/cmd/protoc-gen-buf-lint
    
```


### 运行说明

buf generate 按照配置文件生成代码
buf generate -o gen  会将生成代码放到gen目录下