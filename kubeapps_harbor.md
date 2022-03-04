# Harbor의 Chart 와 Kubeapps를 이용해 배포
1. Harbor 의 CA키가 self-sign으로 만든 인증서인 경우 chart-syncer시에 인증서를 체크하기 때문에 local pc에 등록해야 함
mac의 경우 

sudo security add-trusted-cert -d -r trustRoot -k /Library/Keychains/System.keychain ca.crt

2. DNS에 등록하지 않은 custom domain 이름인 경우

kubectl -n kube-system edit configmap/coredns

hosts { 
              3.38.150.248 harbor.tanzukorea.kr
              fallthrough
}

kubectl -n kube-system rollout restart deployment coredns