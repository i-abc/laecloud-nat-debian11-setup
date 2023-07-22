## 简单说明

本脚本是莱云 NAT 服务器 Debian11 的快捷开始脚本  
会将软件源更换为清华大学软件源、开启用户登录（能用自己的SSH客户端连接服务器）、更新软件源并安装常用软件

## 完整的使用方法

1. 将防火墙的入站策略设置为接受

![](https://github.com/i-abc/laecloud-nat-debian11-setup/raw/main/readme_images/1.png)

2. 在 Xterm.js 控制台登录并执行脚本

![](https://github.com/i-abc/laecloud-nat-debian11-setup/raw/main/readme_images/2.png)

```bash
bash <(wget -qO- https://fastly.jsdelivr.net/gh/i-abc/laecloud-nat-debian11-setup@main/laecloud-nat-debian11-setup.sh)
```

3. 端口换算并使用自己的 SSH 客户端连接

点击蓝色 IP 进入端口换算器

![](https://github.com/i-abc/laecloud-nat-debian11-setup/raw/main/readme_images/3.png)
![](https://github.com/i-abc/laecloud-nat-debian11-setup/raw/main/readme_images/4.png)