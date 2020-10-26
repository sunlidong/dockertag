FROM golang:1.14

#进入工作目录hellodocker
WORKDIR $GOPATH/src/dockertag

#当前目录所有文件copy进去
COPY . $GOPATH/src/dockertag

#设置goproxy
RUN go env -w GOPROXY="https://goproxy.io"

#执行编译，生成dog
RUN go build dog

#端口 
EXPOSE 10082

#启动
ENTRYPOINT ["./dog"]

