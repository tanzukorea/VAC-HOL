#!/bin/bash

if [ $# -le 3 ] ; then
        echo "Usage : extractImage.sh [chart directory] [Image Registry URL] [UserName] [Password]"
        exit;
fi

cd $1
num=0
pkgname=""
rm -rf save.sh
rm -rf load.sh
for i in $(find ./ -name 'values.yaml' |xargs egrep " repository: bitnami/|tag:" |awk '{print $3}');
do
        num=$((num + 1))
        let r=$num%2
        if [ $r != 0 ]; then
                echo -n "imgpkg copy -i docker.io/" >> save.sh
                echo -n $i":" >> save.sh
                pkgname=$i
        else
                echo -n $i >> save.sh
                echo -n " --to-tar $pkgname.tar" >> save.sh
                echo "" >> save.sh
                echo -n "imgpkg copy --tar $pkgname.tar --to-repo $2/$pkgname --registry-username $3 --registry-password" \"$4\" --registry-verify-certs=false >> load.sh
                echo "" >> load.sh
        fi
done
chmod +x save.sh
mv save.sh ../
chmod +x load.sh
mv load.sh ../
cd ..
mkdir -p bitnami