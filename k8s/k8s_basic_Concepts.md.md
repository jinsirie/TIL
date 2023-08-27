
### Kubernetes Env Config


## 1. Pod
### 1.1 init Container & infra Container

🔽 2개의 init container 실행 시, Pod 이 실행할 수 있도록 작성된 yaml 파일
```yaml
apiVersion: v1
kind: Pod
metadata:
  name: myapp-pod
  labels:
    app.kubernetes.io/name: MyApp
spec:
  containers:
  - name: myapp-container
    image: busybox:1.28
    command: ['sh', '-c', 'echo The app is running! && sleep 3600']
  initContainers:
  - name: init-myservice
    image: busybox:1.28
    command: ['sh', '-c', "until nslookup myservice.$(cat /var/run/secrets/kubernetes.io/serviceaccount/namespace).svc.cluster.local; do echo waiting for myservice; sleep 2; done"]
  - name: init-mydb
    image: busybox:1.28
    command: ['sh', '-c', "until nslookup mydb.$(cat /var/run/secrets/kubernetes.io/serviceaccount/namespace).svc.cluster.local; do echo waiting for mydb; sleep 2; done"]
```


🔽 2 개의 init Container 실행 후, 위의 Pod 이 정상적으로 Running 될 수 있다.
```yaml
---
apiVersion: v1
kind: Service
metadata:
  name: myservice
spec:
  ports:
  - protocol: TCP
    port: 80
    targetPort: 9376
---
apiVersion: v1
kind: Service
metadata:
  name: mydb
spec:
  ports:
  - protocol: TCP
    port: 80
    targetPort: 9377
```


### 1.2 Static Pod ( feat. Kublet Daemon)
- 기본적으로 Control Panel 내의 API 서비스를 호출하여  Controller 와 Scheduler에 따라  Pod 이 생성된다. 단, Kubelet Daemon에 의해 구동될 수 있는 데 이를 Static Pod이라 말한다.



### 1.3 Kubernetes Service Concepts & Types
  - Cluster IP : Labeling
  - NodePort : Ports
  - LoadBalancer : 트래픽 분배
  - ExternalName : DNS 기능