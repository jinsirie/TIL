# Liveness Probe
(=live check 개념)

## Probe 종류
### 1. httpGet probe 
지정한 IP 주소, port, path에 HTTP GET 요청을 보내, 해당 컨테이너가 응답하는지 확인한다. 반환코드가 200이 아닌 값이 나오면 오류, 컨테이너를 다시 시작
```yaml
livenessProbe:
    path:
    port: 80
```

### 2. tcpSocket probe 
지정한 포트에 TCP연결을 시도. 연결하지 않으면 컨테이너를 다시 시작한다.
```yaml
livenessProbe:
    tcpSocket:
    port: 22
```

### 3.exec probe 
exec 명령을 전달하고 명령의 종료코드가 0이 아니면 컨테이너를 다시 시작한다.
```yaml
livenessProbe:
    exec:
    command:
    - ls
    - /data/file
```

#### Pod는 그대로이며, Container만 재시작하는 것이다.

## Liveness probe 매개변수

```yaml
apiVersion: v1
kind: Pod
metadata:
  name: liveness-pod
spec:
  containers:
  - image: smlinux/unhealthy
    name: unhealthy-container
    ports:
    - containerPort: 8080
      protocol: TCP
    livenessProbe:
      httpGet:
        path: /
        port: 8080
    
    initalDelaySeconds: 15
    periodSeconds: 20
    timeoutSeconds: 1
    successThreshold: 1
    failureThreshold: 3ss
```

