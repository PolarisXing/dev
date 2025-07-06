WSL2 后端
```powershell
Enable-WindowsOptionalFeature -Online -FeatureName $("Microsoft-Windows-Subsystem-Linux","VirtualMachinePlatform","Containers")
```


Hyper-V 后端
```powershell
Enable-WindowsOptionalFeature -Online -FeatureName $("Microsoft-Hyper-V","Microsoft-Windows-Subsystem-Linux","VirtualMachinePlatform","Containers") -All
```

访问 [docker install for Windows](https://docs.docker.com/desktop/setup/install/windows-install/) 下载

```powershell
cmd /c "`"Docker Desktop Installer.exe`" install --backend=hyper-v --installation-dir=`"D:\Program Files\Docker\Docker`" --hyper-v-default-data-root=`"D:\ProgramData\DockerDesktop\vm-data`""
```

[Docker 汉化](https://github.com/asxez/DockerDesktop-CN)

```powershell
docker --version
```

```json
{
    "registry-mirrors": ["https://docker.xuanyuan.me"]
}
```

```cmd
"%USERPROFILE%\.docker"
net stop "Docker Desktop Service"
net start "Docker Desktop Service"
```

```powershell
docker pull ubuntu:24.04
```
```powershell
docker build -f Dockerfile -t sec:1.0 .
```


```powershell
docker network create --subnet=192.168.0.1/24 local_net

docker run -d --name test --network local_net --ip 192.168.0.33 -v workspace:/root/workspace -p 8080:8080 -it sec:1.0 /bin/bash

```






