# Kubeapps를 이용해 Chart 설치하기
Kubeapps는 Web기반의 Chart를 이용해 kubernetes클러스터에 Application들을 관리하고 배포해주는 툴입니다.
이 툴을 이용해 Chart와 Container 이미지들을 kubernetes에 배포해보도록 하겠습니다.
이전 Lab에서는 VAC에서 제공하던 chart들을 On-premise에 있는 Harbor에 복사를 했습니다.
그러므로 현재 상태에서 Chart는 VAC에도 존재하고 Harbor에도 존재하게 됩니다.
VAC의 Chart를 직접 kubeapps에 등록해서 사용하는 방법과 Harbor의 Chart를 등록해서 사용하는 방법이 가능합니다.
어떤 방법을 사용해도 가능하지만, 만약 Kubernetes환경이 인터넷이 제한된 환경인 경우에는 두 번째 방법을 이용하시면 되겠습니다.

## 1. [Kubeapps 설치하기](kubeapps_install.md)
## 2. [VAC의 Chart와 Kubeapps를 이용해 배포](kubeapps_vac.md)
## 3. [Harbor의 Chart와 Kubeapps를 이용해 배포](kubeapps_harbor.md)