## 쿠버네티스 등장배경

- 스스로 스케줄링 및 컨테이너 배치
    - Work node의 가용성을 유지하면서 보유한 리소스를 충분히 활용할 수 있도록 스스로 스케줄링
- 헬스체크를 통한 자동 실행
    - 실패한 컨테이너를 자동으로 다시 시작하고 사용자가 정의한 헬스체크에 응답이 없는 컨테이너를 종료
- 수평적 확장 가능
    - CPU 사용률과 같은 metric을 기반으로 POD의 Deployment Replicatset 를 스케줄링
- 자동 롤백 및 롤아웃
    - 컨테이너의 응용 프로그램이나 구성에 대한 변경사항을 점진적으로 업데이트하고 문제 발생 시, 자동 롤백

Kuberbetes Master

Controller-Manager

- Node Controller
- Replication Controller
- Endpoint Controller
- Service Controller

API Server

- Kubernetes API 노출 컴포넌트로  Kubernetes 오브젝트 관리/제어 위한 프론트 엔드

Scheduler

- Node 가 배정되지 않는 새로 생성된 Pods 감지 그것이 구동될 Node 선택

Etcd

- 모든 클러스터 데이터를 담는 Key-value 저장소, Replicatset, Controller, Scheduler, Kubelet 등은 etcd 에 바로 접근하지 않고 API Server 를 통해  etcd 데이터에 접근할 수 있음

Pod

- 배포하고 관리할 수 있는 최소 단위
- 하나 이상의 컨테이너 그룹
- 항상 노드 상에서 존재
- 특정 스토리지(볼륨) 공유 및 클러스터 IP 네트워킹

ReplicaSet

- 여러 개의 Pod를 안정적으로 관리
- 지정된 수의 Pod Replicas가 항상 실행
- 동일한 Pod 개수에 대한 가용성을 보증하는 데 사용

Deployment

- Pod와 ReplicaSet에 대한 선언적 업데이트 제공 / Deployment 에서 의도하는 상태를 설명
- Deployment Controller 는 현재상태에서 의도하는 상태로 비율을 조정하며 변경

Service

- Pod의 논리적 집합과 그것에 접근할 수 있는 정책을 정의하는 추상적 개념
- Pod에게 고유한 IP 주소와 Pod 집합에 대한 단일 DNS명을 부여하고 로드밸런스를 수행가능

쿠버네티스 인기 비결

한눈에 보는 쿠버네티스 

NKS


## 데모시연
 1. NKS 클러스터 생성
  - 1.1 VPC 생성  192.168.0.0./16
  - 1.2 Subnet 생성
     -  192.168.1.0/24  
     -  192.168.2.0/24
     -  192.168.3.0/24
  - 1.3 Network ACL
     -   default : 모든 트래픽에 대한 허용 입니다.
  - 1.4 NAT Gateway
    route table 업데이트
    외부에 통신할 때는  0.0.0.0 -> NATGW
  - 1.5 클러스터 생성

  1.6  ACG 생성 ( 항상 서버 생성 전에 ACG 설정 해주기)
  1.7  서버 생성
  1.8  CDB  생성
  1.9 mysql-wordpress.yaml 설정하기
   external-name : Service
 1.10 secret 파일 배포
 1.11 wordpresspod 생성하기
 -- 서비스 배포
 -- pod 배포 ( + 로드밸런서 를 통해 배포 한다)
 -- 클라우드 DB ACG를 꼭 업데이트 해줘야한다 (쿠버네티스)
 -- 로드밸런서에 접속 잘됨
 -- OKOK?
 
     
 2. Kubectl 설치
 3. Cloud DB for MySQL 생성
 4. Wordpress Pod 생성 및 CDB 연결 설정
 5. Wordpress 접속
 6. Pod Scaling
