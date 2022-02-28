# Vmware Application Catalog-HOL
 ![](images/tanzu_hol_header_logo.png)

 ## Introduction
본 핸즈온 문서는 VMWare Application Catalog 에 대한 실습을 위한 가이드 문서입니다. 

## Objectives
* Application Catalog를 사용하는 방법에 대해 알아본다.

## Required Artifacts
* 인터넷 접속 가능한 PC
* VAC Demo 환경
* Harbor (admin 권한 필요): Container Repository (https://goharbor.io/docs/2.4.0/install-config/)
* SSH Terminal (windows Putty, macOS Terminal 등)
* Kubernetes 환경 (예: Tanzu Kubernetes Grid) : Lab4
* Kubeapps : Lab4 (https://kubeapps.com/)

## Hands-On 순서

1. [VAC Console UI 살펴보기](vac_console.md)
2. [VAC --> Harbor : 이미지 전송](vac_onpremise.md)
3. [VAC --> Harbor : Chart와 이미지 전송](vac_chartsyncer.md)
4. Chart 이용해서 배포하기