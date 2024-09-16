# 8086

8086 course in hitsz

## env

使用了: nasm + watcom + dosbox-x

### nasm


nasm 是一个 assembler, 下面是命令

```sh
nasm -f bin correct.asm -o correct.com
```

### watcom

watcom 是一个交叉编译工具, 我们的目标平台是: i386, dos, 可以使用下面的编译命令

```sh
wcl -bt=dos -l=dos -S hello.c
```

反汇编的命令是

```sh
wdis hello.o > hello.asm
```

### dosbox-x

在 dosbox-x.conf 同目录下启动 dosbox-x, 这个配置文件会被读取,
我在里面定义了一个自动挂载的命令



