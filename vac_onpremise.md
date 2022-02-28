# VAC --> Harbor 이미지 전송
VAC의 Application 생성시에 기본적으로 registry를 Harbor로 지정할 수 있습니다.
이때 Harbor의 외부에서 접근 가능한 URL 주소와 계정정보를 입력하기만 하면 됩니다. 그리고 DMZ 내부에 있는 경우 방화벽에을 열어 주어야 합니다.
이외에도 다음의 두가지 방법으로 이미지를 on-premise로 전달을 할 수 있습니다.

1. [Harbor Replication (Container Image 전송만 가능)](vac_harbor_replication.md)
2. [오픈소스 Chart-Syncer 툴 이용 (chart / Container Image 모두 가능)](vac_chartsyncer.md)


