---
attachments: [Clipboard_2022-05-06-14-33-49.png, Clipboard_2022-05-06-14-35-13.png]
title: Ubuntu 18.04 Rabbit MQ 설치하기
created: '2022-05-06T02:42:10.248Z'
modified: '2022-05-06T07:33:56.932Z'
---

# Ubuntu 18.04 Rabbit MQ 설치하기



#### 1. RabbitMQ
Message Queue 로 Quene 의 성격을 가지면서 시스템간 비동기 처리를 할 때 사용됨


>Ref1. https://www.rabbitmq.com/install-debian.html#erlang-repositories

#### 1.1 HTTPS Transport
```
sudo apt-get install apt-transport-https
```

#### 1.2 Add Repositoru Signing Key
```
## Team RabbitMQ's main signing key
curl -1sLf "https://keys.openpgp.org/vks/v1/by-fingerprint/0A9AF2115F4687BD29803A206B73A36E6026DFCA" | sudo gpg --dearmor | sudo tee /usr/share/keyrings/com.rabbitmq.team.gpg > /dev/null
## Launchpad PPA that provides modern Erlang releases
curl -1sLf "https://keyserver.ubuntu.com/pks/lookup?op=get&search=0xf77f1eda57ebb1cc" | sudo gpg --dearmor | sudo tee /usr/share/keyrings/net.launchpad.ppa.rabbitmq.erlang.gpg > /dev/null
## PackageCloud RabbitMQ repository
curl -1sLf "https://packagecloud.io/rabbitmq/rabbitmq-server/gpgkey" | sudo gpg --dearmor | sudo tee /usr/share/keyrings/io.packagecloud.rabbitmq.gpg > /dev/null
```
#### 1.3 Add a Source List File
여기서 apt repository에서 실수 했던 게, Ubuntu 18.04 기준으로 distribution이 'bionic' 이었는데 그냥 복사 붙여넣기를 하여 ERROR 발생함


```
sudo tee /etc/apt/sources.list.d/rabbitmq.list <<EOF
## Provides modern Erlang/OTP releases
##
## "bionic" as distribution name should work for any reasonably recent Ubuntu or Debian release.
## See the release to distribution mapping table in RabbitMQ doc guides to learn more.
deb [signed-by=/usr/share/keyrings/net.launchpad.ppa.rabbitmq.erlang.gpg] http://ppa.launchpad.net/rabbitmq/rabbitmq-erlang/ubuntu bionic main
deb-src [signed-by=/usr/share/keyrings/net.launchpad.ppa.rabbitmq.erlang.gpg] http://ppa.launchpad.net/rabbitmq/rabbitmq-erlang/ubuntu bionic main

## Provides RabbitMQ
##
## Replace $distribution with the name of the Ubuntu release used.
## On Debian, "deb/ubuntu" should be replaced with "deb/debian"
deb [signed-by=/usr/share/keyrings/io.packagecloud.rabbitmq.gpg] https://packagecloud.io/rabbitmq/rabbitmq-server/ubuntu/ $distribution main
deb-src [signed-by=/usr/share/keyrings/io.packagecloud.rabbitmq.gpg] https://packagecloud.io/rabbitmq/rabbitmq-server/ubuntu/ $distribution main
EOF


```

![](https://github.com/jinsirie/TIL/blob/813ac7d66ec3e75c3ceebc08526fcb8a82e62bb1/img/Clipboard_2022-05-06-14-33-49.png)

1.4 Diagnosis RabiitMQ STATUS command line 



```
# checks if the local node is running and CLI tools can successfully authenticate with it
sudo rabbitmq-diagnostics ping
```

![](https://github.com/jinsirie/TIL/blob/813ac7d66ec3e75c3ceebc08526fcb8a82e62bb1/img/Clipboard_2022-05-06-14-35-13.png)



```
# prints enabled components (applications), TCP listeners, memory usage breakdown, alarms
# and so on
sudo rabbitmq-diagnostics status

# prints cluster membership information
sudo rabbitmq-diagnostics cluster_status

# prints effective node configuration
sudo rabbitmq-diagnostics environment

```
