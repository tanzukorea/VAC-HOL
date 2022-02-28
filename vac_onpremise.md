# VAC --> Harbor 이미지 전송
VAC의 Application 생성시에 기본적으로 registry를 Harbor로 지정할 수 있습니다.
이때 Harbor의 외부에서 접근 가능한 URL 주소와 계정정보를 입력하기만 하면 됩니다. 그리고 DMZ 내부에 있는 경우 방화벽에을 열어 주어야 합니다.
이외에도 다음의 두가지 방법으로 이미지를 on-premise로 전달을 할 수 있습니다.

1. Harbor Replication (Container Image 전송만 가능)
2. 오픈소스 Chart-Syncer 툴 이용 (chart / Container Image 모두 가능)


## 1. Harbor Replication
1. Harbor에서는 repository를 pull하거나 push하는 replication 기능을 제공하고 있습니다.
Harbor에 login을 합니다. 
![](images/harbor_login.png)

    ![](images/harbor_main.png)

2. Harbor 왼쪽 메뉴에서 Administration -> Registries를 클릭합니다. 여기에서 외부 저장소를 설정할 수 있습니다.
![](images/gcr3.png)

3. New Endpoint를 클릭합니다.
이 데모에서는 다음의 gcr 계정 정보를 입력합니다. 실제 운영환경에서는 VAC UI console에서 입력한 registry 정보를 입력해야 합니다.

    ![](images/gcr2.png)

    ```
    Provider : Google GCR
    Name : 이름 입력
    Endpoint URL : https://gcr.io
    ```
    ```
    Access Secret :

    {
    "type": "service_account",
    "project_id": "sys-2b0109it",
    "private_key_id": "c9dc1e9c39fce8cc3e603ef6a9912c3bd7379f2b",
    "private_key": "-----BEGIN PRIVATE KEY-----\nMIIEvQIBADANBgkqhkiG9w0BAQEFAASCBKcwggSjAgEAAoIBAQC7H2jwgzFUP0f5\nTZyfzqVVQx3gyGYoqD3bC5SJLWmqeLX2NGh6lS2W9cJOayPYWa29NacGVv9rFXP4\nYT6EAtR5q7qW1GW4LrkWPZSDmuWEy+kwA22fc8y8wZXW19+QG+B7HdB55ewJnnVN\nJhPZ/3df8aAVlE2WMLow3xSHZLXpbU4qir9P3p2oqEwYjeEg70QLUTVwQmc7/qkg\nteqQptWyg3zaU77oYKs5XMPrIvIB6RlbAnBw5T3RZzcn0XJ1whMRiC8/XZG9m2AT\n+u45CBeJgh2+adZVCnoYMSHVAHh3RVpbXGP5Qz8jkYIaKRg1sm1jpIPtMhOMhEVC\nUJ7569HlAgMBAAECggEALCpQdi38213ZQsQZAtX/C2X9PBQImrGE8fmkfBEqJrh5\neCwr+bzShxYn36Llkbeu7GDotHQdsnxchCQNoZJabIJGFrn4bTWn7VIpBrvtTr/j\nILg6bD9kdCu7zjri8yxFOkHR9id4o9eQ553kYxhrKEvLJTS88EU9ePH6Mi+oyPhh\n74LepNk8GJQb09SmBjMFLoSH16U61qk9IWUlcXDICk6N+RVfQQC7o0qNI5wlK+jo\nXoiB2427EKh3ZVxyAU3S4TEIxaWDVmkctAC3VE/OVoE4xcrSdOfeb62AbgbwbDIq\nINpROlV7NpHSkjCb2INemiEiqCijQF8VGEsuxb5JGQKBgQDzBfjSdSLlXgVqRDCa\niu/4UPJEOnYijGChYARUp+II+XYT2wLRDq+bSRjFA8G/GoYdUtsq23wkWcRm2nEw\nzCJthcMlaArMI1DVUmCB9P+vHpl4KibHLyV2zjcVPmvYvOrrsbrezftqbxBdu2DP\nstCla8ubKhVY8/XptTDeq99rKQKBgQDFHUysVaxM4XyEP5enewhJ4L8zE4vjkn36\n/6qGiXdALsRcqUARO3T/96TPdvJM+02lmrwkIYFNS6uZ0XoRh+47P7+gjyokTq/1\nboTubEneeestsdO2+Eb93Bs0k6UlVYduOldWZWvovxAS9qrS17jdCD+jiFvfdPKC\nvEqJO1NEXQKBgESCO3nA0byNO8OQQ49deXasAw/e1yy4HAmCEtZ2mU7kXDgOtoWO\nuUxyV8w6WeTwqjwb/nLfeuiYcbh4/g2+jjoHylKCOQEBN6lbVp9sHKQWYTcx0sq1\n7L7INVkExsxLvYICEWb79FM1ygxSZWFHzG/FqpksTOZNp9ZhYMx08T+5AoGAHJ12\nRgZh7v9E/kXlFDEuMNtpplaOFklr9IYtET7five/FdyUKmxBPe+Lg3q3DinlScc+\nzNf4V2pGzRu15tme4gcNIJfn/EFYFf8nWR1rU9rLI2UPYR6F39CWOnm8ncDe2kep\n6ibrFWy3PqmEfvtGIQBTjL/85mGp2wTOpUFxgxkCgYEAjC+0uhwvjq1CtX07ZzWD\nAvBhgENbeMhgJH39LPwQeN6elMAZuVXOOMjdcUgBhmn+qFdtT8grTTb8aVaMv03w\npb3Ad/h9O02jju1szFauk3bRyOeLgnfbGWfxQr+wLF6QX88OOni2k7AZSsY7c2+B\nJ98NXFP/ONWBctynfAIhzRE=\n-----END PRIVATE KEY-----\n",
    "client_email": "ro-tac-demo@sys-2b0109it.iam.gserviceaccount.com",
    "client_id": "104362580895171078721",
    "auth_uri": "https://accounts.google.com/o/oauth2/auth",
    "token_uri": "https://oauth2.googleapis.com/token",
    "auth_provider_x509_cert_url": "https://www.googleapis.com/oauth2/v1/certs",
    "client_x509_cert_url": "https://www.googleapis.com/robot/v1/metadata/x509/ro-tac-demo%40sys-2b0109it.iam.gserviceaccount.com"
    }
    ```

4. 정상적으로 입력이 되었습니다.
![](images/gcr1.png)

5. 이제 좌측 메뉴에서 Replications 를 클릭한 후 New Replication Rule을 클릭합니다. 
![](images/replication1.png)

6. 이미지 저장소 위치 이름 확인
VAC UI console에서 Container Detail에 들어가서 저장소의 위치를 복사합니다.
![](images/vac_container_url.png)

7. New Replication Rule에 아래의 정보를 입력합니다.<br>
    이름을 입력하고 Source registry를 앞에서 설정한 registry를 선택합니다.<br>
    application 중에서 가져오고자 하는 이미지를 Source resource filter 의 Name에 입력합니다.<br>
    여기에서는 kafka 이미지만 가져오도록 하겠습니다.

    ```
    Source resource filter : sys-2b0109it/demo/bitnami/kafka
    Tags: 2.5.0*
    ```

    만약 이때 특정 application의 모든 image를 다운로드 받고자 할 경우에는 다음과 같이 입력하면 됩니다. (이 데모는 100G 이상의 Disk가 필요하므로 주의합니다.)
    ```
    sys-2b0109it/demo/**
    ```
    또한 모든 버전의 이미지를 받고자 할 경우에도 Tags에 아무것도 입력하지 않으면 됩니다.
    ![](images/replication2.png)

8. Replicate 버튼을 누릅니다. Replicate가 정상적으로 종료되면 100%가 표시됩니다.
![](images/harbor_replicate1.png)

9. Project로 가서 다운로드가 된 이미지를 확인합니다.
![](images/project_repo1.png)
10. 생성된 Project를 클릭해서 들어가면 repository가 다운로드 되어 있습니다.
![](images/project_repo2.png)
11. 해당 Repository로 다시 클릭해서 들어가면 선택한 2.5.0 버전들들에 대한 하위 버전들까지 102개의 Artifacts들이 다운로드 되어 있는 것을 확인할 수 있습니다. 필요 없는 부분들을 제외하기 위해 조금 더 상세하게 설정해서 특정 버전만 다운로드 받도록 설정할 수 있습니다.
![](images/project_repo3.png)