cd ..
ls
cd class-bff
ls
cd r*
ls
vi c*
vi r*
vi c*
docker images
docker rmi class-bff:test
docker ps
docker stop c15
clear
docker build -t class-bff:test .
ls
cd ..
ls
docker build -t class-bff:test .
ls
docker run --rm -dit -p 3002:3002 class-bff:test
docker ps
docker commit 2fa4b4880bb8
docker tag class-bff:test 346549:class-bff:bff-1
history
docker image tag class-bff:test 346549:class:bff-1
docker image tag class-bff:test 346549/class:bff-1
docker push 346549/class:bff-1
ls
cd ~
ls
cd ingress
ls
vi  ingress-msa-1.yaml
cd ~
ls
cd app/app
ls
cd ..
ls
cd files
ls
cd ~/new
ls
cd app
ls
cd app
ls
cd files
ls
cd r*
ls
vi f*
vi r*
ls
cd ..
ls
vi p*
vi s*
vi D*
docker build -t msa-2:test .
docker run --rm -dit -p 3003:300 msa-2:test
docker ps
docker stop e22
docker run --rm -dit -p 3003:3003  msa-2:test
docker ps
docker commit 24d22fc9b601
docker  image tag msa-2:test 346549/files:msa-2
docker push 346549/files:msa-2
cd ..
ls
cd files-bff
ls
cd r*
ls
vi f*
vi r*
cd ..
ls
docker build -t bff-2 .
kubectl get ingress
kubectl get svc
docker run --rm -dit -p 3004:3004 bff-2:latest
docker ps
docker stop 24d
docker commit d1f7de03fc96
docker tag bff-2:latest 346549/files:bff-2
docker push 346549/files:bff-2
cd ~/ingress
ls
vi ingress-bff-2.yaml
kubectl apply -f ingress-bff-2.yaml
kubectl get po
kubectl get svc
ls
vi ingress-msa-1.yaml
kubectl apply -f ingress-msa-1.yaml
vi ingress-msa-1.yaml
vi ingress-bff-1.yaml
kubectl apply -f l
shabbier@bastion:~/ingress$ vi i
kubectl apply -f l
kubectl apply -f ingress-bff-1.yaml
kubectl get svc
vi ingress-msa-1.yaml
vi ingress-bff-1.yaml
kubectl apply -f ingress-msa-1.yaml
kubectl apply -f ingress-bff-1.yaml
clear
kubectl get svc
kubectl get -o wide
kubectl get po  -o wide
kubectl get svc
ls
vi ingress-msa-1.yaml
kubectl apply -f ingress-msa-1.yaml
kubectl describe ingress msa-1
kubectl get svc
ls
vi 2*
eksctl delete cluster -f ~/cluster.yaml
eksctl get nodegroup
eksctl get nodegroup --cluster mfe
clear
ls
clear
ls
mkdir new
cd new
git clone https://github.com/shabbier0473/app.git
ls
cd app
ls
tar -xvzf class.tar.gz
ls
rm -rf *
ls
git clone https://github.com/shabbier0473/app.git
ls
cd app
ls
cd class.tar
ls
cd r*
ls
cd ..
ls
eksctl create cluster --name=attractive-gopher
ls
$PolicyARN=arn:aws:iam::955470930558:policy/ALBIngressControllerIAMPolicy
PolicyARN=arn:aws:iam::955470930558:policy/ALBIngressControllerIAMPolicy
echo $PolicyARN
eksctl create iamserviceaccount        --cluster=attractive-gopher        --namespace=kube-system        --name=alb-ingress-controller        --attach-policy-arn=$PolicyARN        --override-existing-serviceaccounts        --approve
curl -sS "https://raw.githubusercontent.com/kubernetes-sigs/aws-alb-ingress-controller/v1.1.4/docs/examples/alb-ingress-controller.yaml"      | sed "s/# - --cluster-name=devCluster/- --cluster-name=attractive-gopher/g"      | kubectl apply -f -
kubectl logs -n kube-system $(kubectl get po -n kube-system | egrep -o alb-ingress[a-zA-Z0-9-]+)
kubectl apply -f https://raw.githubusercontent.com/kubernetes-sigs/aws-alb-ingress-controller/v1.1.4/docs/examples/2048/2048-namespace.yaml
kubectl apply -f https://raw.githubusercontent.com/kubernetes-sigs/aws-alb-ingress-controller/v1.1.4/docs/examples/2048/2048-deployment.yaml
kubectl apply -f https://raw.githubusercontent.com/kubernetes-sigs/aws-alb-ingress-controller/v1.1.4/docs/examples/2048/2048-service.yaml
kubectl apply -f https://raw.githubusercontent.com/kubernetes-sigs/aws-alb-ingress-controller/v1.1.4/docs/examples/2048/2048-ingress.yaml
kubectl get ingress/2048-ingress -n 2048-game
clear
$ kubectl logs -n kube-system $(kubectl get po -n kube-system | egrep -o alb-ingress[a-zA-Z0-9-]+)
kubectl logs -n kube-system $(kubectl get po -n kube-system | egrep -o alb-ingress[a-zA-Z0-9-]+)
clear
eksctl delete cluster attractive-gopher
ls
cd ~
ls
eksctl create cluster -f cluster.yaml
kubectl get nodes
kubectl get svc
clear
history
kubectl apply -f https://raw.githubusercontent.com/kubernetes-sigs/aws-alb-ingress-controller/v1.1.4/docs/examples/rbac-role.yaml
PolicyARN=arn:aws:iam::955470930558:policy/ALBIngressControllerIAMPolicy
eksctl create iamserviceaccount        --cluster=attractive-gopher        --namespace=kube-system        --name=alb-ingress-controller        --attach-policy-arn=$PolicyARN        --override-existing-serviceaccounts        --approve
eksctl create iamserviceaccount        --cluster=mfe        --namespace=kube-system        --name=alb-ingress-controller        --attach-policy-arn=arn:aws:iam::955470930558:policy/ALBIngressControllerIAMPolicy        --override-existing-serviceaccounts        --approve
eksctl utils associate-iam-oidc-provider --cluster=mfe --approve
eksctl create iamserviceaccount        --cluster=mfe        --namespace=kube-system        --name=alb-ingress-controller        --attach-policy-arn=arn:aws:iam::955470930558:policy/ALBIngressControllerIAMPolicy        --override-existing-serviceaccounts        --approve
curl -sS "https://raw.githubusercontent.com/kubernetes-sigs/aws-alb-ingress-controller/v1.1.4/docs/examples/alb-ingress-controller.yaml"      | sed "s/# - --cluster-name=devCluster/- --cluster-name=mfe/g"      | kubectl apply -f -
kubectl logs -n kube-system $(kubectl get po -n kube-system | egrep -o alb-ingress[a-zA-Z0-9-]+)
ls
kubectl apply -f msa-1-deployment.yaml
kubectl apply -f msa-1-service.yaml
kubectl get svc
kubectl get po -o wide
vi ngi-dep.yaml
vi ngi-ser.yaml
ls
kubectl apply -f  ingress-msa.yaml
kubectl get ingress
kubectl get deploy
kubectl delete deploy msa-1
kubectl get svc
kubectl delete svc msa-1
ls
vi ng*
kubectl apply -f nginx.yaml
vi svc*
kubectl apply -f svc.yaml
kubectl get svc
vi ingress-msa.yaml
kubectl apply -f ingress-msa.yaml
kubectl get ingress
kubectl get svc
kubectl get po
kubectl get po -o wide
ls
vi  nginx.yaml
kubectl apply -f nginx.yaml
vi svc.yaml
kubectl apply -f nginx.yaml
kubectl get po
kubectl get deploy
kubectl delete deploy nginx-deployment
kubectl get svc
kubectl get deploy
kubectl delete deploy nginx
kubectl get svc
kubectl delete svc nginx
kubectl get ingress
kubectl delete ingress msa
ls
vi ingress-msa.yaml
vi echo-ingress.yaml
kubectl apply -f echo-ingress.yaml
kubectl get ingress
kubectl delete ingress echosertver
kubectl delete ingress echoserver
clear
vi msa-ing*
ls
vi ingress-msa.yaml
vi ing-new.yaml
kubectl apply -f  ing-new.yaml
kubectl get ingress
vi 2048.yaml
kubectl apply -f 2048.yaml
kubectl delete -f 2048.yaml
clear
ls
vi ing-new.yaml
cp ing-new.yaml ingress-msa-1.yaml
cp ing-new.yaml ingress-bff-1.yaml
vi ingress-msa-1.yaml
kubectl get po
watch kubectl get po
cd ingress
ls
vi ingress-msa-1.yaml
kubectl apply -f ingress-msa-1.yaml
docker ps
docker stop 217
kubectl get po
ls
vi ing-new.yamlhistory
history
docker run --rm -dit -p 3001:3001 class:msa-1
ls
vi ingress-bff-1.yaml
kubectl apply -f ingress-bff-1.yaml
kubectl get po
docker ps
docker stop 2fa
clear
ls
cp ingress-bff-1.yaml ingress-bff-2.yaml
cp ingress-msa-1.yaml ingress-msa-2.yaml
ls
vi ingress-msa-1.yaml
vi ingress-msa-2.yaml
kubectl apply -f ingress-msa-2.yaml
kubectl get po
cd ~
l
ls
cd new
ls
cd app
ls
cd app
ls
cd class-bff
ls
cd r*
ls
vi c*
vi r*
cd ~
ls
cd ingress
ls
vi ingress-msa-1.yaml
vi ingress-bff-1.yaml
ls
vi ingress-bff-1.yaml
kubectl apply -f ingress-bff-1.yaml
vi ingress-bff-1.yaml
kubectl get svc
vi ingress-bff-1.yaml
vi ingress-msa-1.yaml
clear
ls
vi ingress-msa-1.yaml
kubectl apply -f ingress-msa-1.yaml
kubectl apply -f ingress-bff-1.yaml
ls
vi ingress-msa-1.yaml
kubectl apply -f ingress-msa-1.yaml
ls
vi ingress-msa-1.yaml
kubectl apply -f ingress-msa-1.yaml
vi ingress-msa-1.yaml
kubectl apply -f ingress-msa-1.yaml
vi ingress-msa-1.yaml
kubectl apply -f ingress-msa-1.yaml
kubectl apply -f ingress-bff-1.yaml
vi ingress-bff-1.yaml
kubectl apply -f ingress-bff-1.yaml
docker ps
docker stop d1f
clear
ls
clear
ls
vi ingress-msa-1.yaml
kubectl describe ingress msa-1
ls
vi ingress-msa-1.yaml
kubectl delete ingress msa-1
kubectl get ingress
kubectl delete ingress bff-1
vi ingress-msa-1.yaml
ls
vi ingress-msa-2.yaml
vi ingress-msa-1.yaml
kubectl apply -f ingress-msa-1.yaml
vi ingress-msa-1.yaml
vi ingress.yaml
kubectl apply -f ingress.yaml
kubectl get ingress
vi ingress.yaml
vi 2.yaml
kubectl apply -f 2.yaml
vi 2.yaml
kubectl apply -f 2.yaml
vi 2.yaml
kubectl apply -f 2.yaml
kubectl get ingress
kubectl delete msa-1
kubectl delete ingress msa-1
kubectl apply -f 2.yaml
kubectl get ingress
kubectl delete ingress
kubectl delete ingress msa-1
vi 2*
kubectl apply -f 2.yaml
kubectl get ingress
ls
clear
ls
vi ingress.yaml
kubectl apply -f ingress.yaml
vi 2*
kubectl apply -f 2.yaml
kubectl get ingress
kubectl delete ingress msa-1
vi 2*
kubectl apply -f 2.yaml
kubectl get ingress
kubectl delete ingress msa-1
ls
vi ingress.yaml
kubectl apply -f ingress.yaml
kubectl get ingress
kubectl delete cluster mfe
clear
ls
kubectl delete ingress msa-1
kubectl apply -f ingress-msa-1.yaml
vi ingress-msa-1.yaml
kubectl apply -f ingress-msa-1.yaml
vi ingress-msa-1.yaml
kubectl apply -f ingress-msa-1.yaml
vi ingress-msa-1.yaml
clear
ls
clear
ls
history
clear
history
kubectl get nodes
kubectl get pods
kubectl get svc
ls
cd shabbir/
ls
kubectl get ingress
ls
kubectl get pods 
kubectl get deploy
kubectl get deploy bff-1 -o yaml
kubectl get deploy bff-1 -o yaml > bff1.yaml
cat bff1.yaml 
ls
vi c*
eksctl create 
eksctl create  cluster -f cluster.yaml
ls
vi node.yaml
eksctl create nodegroup -f node.yaml
clear
ls
cd ingress
ls
vi ingress.yaml
kubectl logs -n kube-system $(kubectl get po -n kube-system | egrep -o alb-ingress[a-zA-Z0-9-]+)
clear
curl -sS "https://raw.githubusercontent.com/kubernetes-sigs/aws-alb-ingress-controller/v1.1.4/docs/examples/alb-ingress-controller.yaml"      | sed "s/# - --cluster-name=devCluster/- --cluster-name=mfe/g"      | kubectl apply -f -
PolicyARN=arn:aws:iam::955470930558:policy/ALBIngressControllerIAMPolicy
eksctl create iamserviceaccount        --cluster=mfe        --namespace=kube-system        --name=alb-ingress-controller        --attach-policy-arn=$PolicyARN        --override-existing-serviceaccounts        --approve
curl -sS "https://raw.githubusercontent.com/kubernetes-sigs/aws-alb-ingress-controller/v1.1.4/docs/examples/alb-ingress-controller.yaml"      | sed "s/# - --cluster-name=devCluster/- --cluster-name=mfe/g"      | kubectl apply -f -
kubectl logs -n kube-system $(kubectl get po -n kube-system | egrep -o alb-ingress[a-zA-Z0-9-]+)
clear
eksctl utils associate-iam-oidc-provider --cluster=mfe --approve
kubectl apply -f https://raw.githubusercontent.com/kubernetes-sigs/aws-alb-ingress-controller/v1.1.4/docs/examples/rbac-role.yaml
eksctl create iamserviceaccount        --cluster=mfe        --namespace=kube-system        --name=alb-ingress-controller        --attach-policy-arn=$PolicyARN        --override-existing-serviceaccounts        --approve
curl -sS "https://raw.githubusercontent.com/kubernetes-sigs/aws-alb-ingress-controller/v1.1.4/docs/examples/alb-ingress-controller.yaml"      | sed "s/# - --cluster-name=devCluster/- --cluster-name=mfe/g"      | kubectl apply -f -
kubectl logs -n kube-system $(kubectl get po -n kube-system | egrep -o alb-ingress[a-zA-Z0-9-]+)
clear
ls
kubectl apply -f 2048.yaml
kubectl get ingress
clear
kubectl get ingress
vi 2048.yaml
kubectl apply -f 2048.yaml
vi 2048.yaml
kubectl apply -f 2048.yaml
vi 2048.yaml
kubectl apply -f 2048.yaml
vi 2048.yaml
kubectl apply -f 2048.yaml
ls
vi 2048
vi 2048.yaml
kubectl get deploy
kubectl delete deploy deployment-2048
kubectl get svc
kubectl delete svc service-2048
clear
ls
mv 2048.yaml msa.yaml
vi msa.yaml
vi msa-ingress.yaml
kubectl apply -f msa-ingress.yaml
kubectl apply -f msa.yaml
kubectl get deploy
kubectl get svc 
kubectl get deploy
kubectl get svc
cd ~
ls
cd new
ls
cd app
ls
cd app
ls
cd class-bff
ls
cd r*
ls
vi c*
vi r*
cd ..
ls
vi s*
docker images
docker build -t class-bff:test
docker build -t class-bff:test .
docker build -t class-bff:test .docker run --rm -dir -p 3002:3002 class-bff:test
docker build -t class-bff:test .docker run --rm -dit -p 3002:3002 class-bff:test
docker run --rm -dit -p 3002:3002 class-bff:test
ls
cd r*
ls
vi c*
history
clear
cd ~/ingress
ls
vi msa-ingress.yaml
kubectl apply -f msa-ingress.yaml
vi msa-ingress.yaml
kubectl apply -f msa-ingress.yaml
vi bff-ingress.yaml
kubectl apply -f bff-ingress.yaml
clear
npm install -g @angular/cli
sudo npm install -g @angular/cli
cd ~
ls
cd new/app
ls
cd app
ls
cd mfe1
ls
cd mfe1
ls
cd ..
ls
mkdir newmfe
cd newmfe
ls
git clone https://github.com/shabbier0473/app.git
ls
cd app
ls
mv  mfe1-src.tar ../
cd ..
ls
mv mfe1-src.tar ..
ls
cd ..
ls
cd ..
ls
cd app
l
ls
cd ..
ls
cd mfe1
ls
cd newmfe
ls
cd app
ls
cd ..
ls
cd ..
ls
cd mfe1
ls
cd ..
ls
clear
ls
cd ..
ls
cd ..
ls
cd ..
ls
cd app
ls
cd app
ls
cd mfe1
ls
cd mfe1
l
scd ..
cd ..
ls
cd n*
ls
cd app
ls
cd app
ls
git clone https://github.com/shabbier0473/app.git
ls
cd ..
ls
cd ..
ls
cd ..
ls
mv mfe1-src.tar ..
ls
cd ..
ls
mv mfe1-src.tar newmfe1
cd n*
ls
cd src
ls
cd pa
cd app
ls
vi app-routing.module.ts
clear
ls
git clone https://github.com/shabbier0473/app.git
ls
cd app
ls
cp mfe1-src.tar.gz ~/new
cd ~/new.
cd ~/new
ls
mkdir mfe1
tar -xvzf mfe1-src.tar.gz
ls
tar -xf mfe1-src.tar.gz -C mfe1
cd mfe1
ls
ng build
ng --version
ng serve
npm install -g @angular/cli
sudo npm install -g @angular/cli
sudo ng build
sudo ng
ng
sudo npm install -g @angular/cli@latest
ng build
node -v
npm -v
ng new test
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.3/install.sh | bash
source ~/.profile
nvm install v12.8.1
nvm list
ng -- version
ng build
ls
rm -rf mfe1.tar.gz
cd src
ng build
cd ..
ls
ng build .
ng build 
ng update
ls
cd src
ls
cd app
ls
cd ~
ls
clear
kubectl get ingress
cd ingress
ls
vi bff-ingress.yaml
ls
vi msa-ingress.yaml
ls
docker images
vi msa-2.yaml
cd ~
ls
cd shabbir
vi msa-2.yaml
kubectl apply -f msa-2.yaml
kubectl get deploy
ls
vi msa-ingress.yaml
ps -ef | grep mg
ps -ef | grep ng
kill -9 23079
sudo   kill -9 23079
kill -9 23079
ps -ef | grep ng
sudo   kill -9 23080
ps -ef | grep ng
sudo   kill -9 23367
ps -ef | grep ng
sudo   kill -9 23465
ps -ef | grep ng
sudo   kill -9 25063
cd ~/ingress
ls
vi sample.yaml
kubectl apply -f sample.yaml
kubectl get ingress
vi sample.yaml
kubectl get ingress
kubectl apply -f sample.yaml
vi 2048.yaml
kubectl apply -f 2048.yaml
kubectl get pods
kubectl get ingress
kubectl delete -f 2048.yaml
cleart
clear
cd ~/new/app/app
ls
cd files-bff
ls
cd r*
ls
vi f*
cd r*
vi r*
docker build -t files-bff:test .
cd ..
ls
docker build -t files-bff:test .
docker run --rm -dit -p 3004:3004 files-bff:test
docker ps
docker commit cf876fd28d61
docker tag class-bff:test 346549/class:bff-1
docker push 346549/class:bff-1
docker commit d07f5b458205
docker tag files-bff:test 346549/files:bff-2
docker push 346549/files:bff-2
cd ~/ingress
ls
vi msa-2.yaml
clear
ls
vi ingress-bff-1.yaml
cp ingress-bff-1.yaml bff-1.yaml
ls
mkdir sample
ls
mv '1!',2.yaml sample
mv '1!'2.yaml sample
mv '1!' 2.yaml sample
ls
mv ingress-bff-2.yaml ingress-msa-1.yaml ingress-bff-1.yaml sample
ls
cp msa-ingress.yaml bff-ingress.yaml
ls
cp sample/ingress-bff-2.yaml bff-2.yaml
vi bff-2.yaml
kubectl apply -f bff-2.yaml
kubectl apply -f bff-1.yaml
kubectl get po
kubectl get svc
vi  bff-ingress.yaml
vi msa-ingress.yaml
clear
ls
vi bff-ingress.yaml
ls
cd sample
ls
vi ingress-msa-1.yaml
cd ..
ls
vi msa-ingress.yaml
clear
ls
vi ingress.yaml
ls
cp * ~
ls
clear
ls
kubectl get svc
clear
cd ~
ls
cd shabbir
ls
vi msa-1.yaml
mv msa-1.yaml msa-1-deploy.yaml
vi msa-1-service.yaml
ls
vi b*
clear
ls
vi msa-1-deploy.yaml
cp msa-1-deploy.yaml msa-2-deploy.yaml
vi msa-1-service.yaml
vi msa-1.yaml
ls
rm -rf msa-1-deploy.yaml msa-2-deploy.yaml
cp msa-1.yaml msa-2.yaml
vi msa-2.yaml
cp msa-2.yaml bff-1.yaml
vi bff-1.yaml
cp bff-1.yaml bff-2.yaml
vi bff-2.yaml
ls
vi msa-ingress.yaml
cp msa-ingress.yaml bff-ingress.yaml
vi bff-ingress.yaml
kubectl get ns
ls
kubectl get deply
kubectl get deploy
kubectl get svc
kubectl apply -f msa-1.yaml
kubectl apply -f msa-2.yaml
kubectl apply -f bff-1.yaml
kubectl apply -f bff-2.yaml
rm -rf bff1.yaml
ls
pwd
kubectl get ingress
ls
vi msa-ingress.yaml
kubectl apply -f ingress.yaml
kubectl apply -f msa-ingress.yaml
vi bff-ingress.yaml
clear
ls
pwd
cd ..
ls
cd shabbir
ls
vi msa-ingress.yaml
kubectl get ns
ls
cd ..
ls
cd s*
ls
vi bff-ingress.yaml
cd ..
git clone git@gitlab.com:shabbier/mfe.git
git  clone https://github.com/shabbier0473/app.git
ls
cd app
ls
mv newcode ~
cd ~
ls
cd n*
ls
cp class-bff.tar class-bff-2.tar
cp -r class-bff.tar class-bff-2.tar
ls
clear
ls
cd class-bff-2.tar
ls
cd r*
ls
vi c*
vi r*
ls
cd ..
ls
vi p*
vi s*
ls
cd ..
ls
cp class.tar class2.tar
cp -r class.tar class2.tar
ls
cd class2.tar
ls
cd data
ls
cd ..
ls
cd p*
vi p*
cd r*
ls
vi c*
vi r*
ls
cd ..
ls
cd ..
ls
cd class-bff-2.tar
ls
cd r*
ls
vi c*
vi r*
ls
cd ..
ls
vi s*
cd ..
ls
cd class2.tar
ls
cd r*
ls
vi c*
vi r*
cd ..
ls
vi Dockerfile
cd ..\ls
cd ..
ls
cd class-bff-2.tar
ls
cd r*
ls
vi c*
vi r*
ls
cd ..
ls
vi p*
vi s*
ls
cd ..
ls
cd class2.tar
ls
vi p*
cd r*
ls
vi c*
vi r*
cd ..
ls
vi Dockerfile
docker build -t class-2 .
ls
docker run --rm -dit -p 3001:3001 class-2:latest
docker ps
docker commit 5de51f95bff6
ls
docker tag class-2:latest 346549/class-2:latest
docker image push 346549/class-2:latest
docker stop 5de51f95bff6
clear
cd ..
ls
cd class-bff-2.tar
ls
cd r*
ls
vi c*
vi r*
ls
cd ..
ls
vi Dockerfile
docker build -t class-bff2 .
docker run --rm -dit -p 3002:3002 class-bff2:latest
docker tag class-bff2:latest 346549/class-bff2:latest
docker push image 346549/class-bff2:latest
docker image 346549/class-bff2:latest
cd ~
ls
clear
ls
cd shabbir
ls
kubectl get deploy
vi bff-2.yaml
ls
vi msa-2.yaml
kubectl apply -f msa-2.yaml
kubectl get ingress
ls
vi msa-ingress.yaml
kubectl apply -f msa-ingress.yaml
vi msa-ingress.yaml
kubectl apply -f msa-ingress.yaml
ls
vi bff-2.yaml
kubectl apply -f bff-2.yaml
kubectl get deploy
kubectl get svc
docker ps
docker stop 68922b0603f1
vi bff-ingress.yaml
kubectl apply -f bff-ingress.yaml
vi bff-ingress.yaml
kubectl apply -f bff-ingress.yaml
kubectl get po -o wide
vi bff-ingress.yaml
kubectl apply -f bff-ingress.yaml
kubectl vi bff-ingress.yaml
vi bff-ingress.yaml
kubectl apply -f bff-ingress.yaml
kubectl describe ingress bff
clear
curl --testing "team=sqe" http://b131d897-default-msa-3ae6-1288133558.us-east-1.elb.amazonaws.com
curl http://b131d897-default-msa-3ae6-1288133558.us-east-1.elb.amazonaws.com
curl --testing "team=sqe" http://b131d897-default-msa-3ae6-1288133558.us-east-1.elb.amazonaws.com/
curl --testing "team=sqe" http://b131d897-default-msa-3ae6-1288133558.us-east-1.elb.amazonaws.com/api/test
curl http://b131d897-default-msa-3ae6-1288133558.us-east-1.elb.amazonaws.com/
curl http://b131d897-default-msa-3ae6-1288133558.us-east-1.elb.amazonaws.com/api/test
clear
eksctl delete cluster mfe
ls
ls -lla
clear
ls
ls -lla
cd shabbir/
ls -lla
cat bff-ingress.yaml 
clear
vi node.yaml
ls
eksctl create nodegroup -f node.yaml
clear
eksctl create nodegroup -f node.yaml
clear
ls
eksctl utils associate-iam-oidc-provider --cluster=mfe --approve
vi ingress-controleer.yaml
kubectl apply -f https://raw.githubusercontent.com/kubernetes-sigs/aws-alb-ingress-controller/v1.1.4/docs/examples/rbac-role.yaml
eksctl create iamserviceaccount        --cluster=mfe        --namespace=kube-system        --name=alb-ingress-controller        --attach-policy-arn=arn:aws:iam::955470930558:policy/ALBIngressControllerIAMPolicy        --override-existing-serviceaccounts        --approve
ls
kubectl apply -f  ingress-controleer.yaml
eksctl create iamserviceaccount        --cluster=mfe        --namespace=kube-system        --name=alb-ingress-controller        --attach-policy-arn=arn:aws:iam::955470930558:policy/ALBIngressControllerIAMPolicy        --override-existing-serviceaccounts        --approve
kubectl logs -n kube-system $(kubectl get po -n kube-system | egrep -o alb-ingress[a-zA-Z0-9-]+)
kubectl apply -f https://raw.githubusercontent.com/kubernetes-sigs/aws-alb-ingress-controller/v1.1.4/docs/examples/rbac-role.yaml
PolicyARN=arn:aws:iam::955470930558:policy/ALBIngressControllerIAMPolicy
echo $PolicyARN
eksctl create iamserviceaccount        --cluster=mfe        --namespace=kube-system        --name=alb-ingress-controller        --attach-policy-arn=$PolicyARN        --override-existing-serviceaccounts        --approve
kubectl apply -f  ingress-controleer.yaml
kubectl logs -n kube-system $(kubectl get po -n kube-system | egrep -o alb-ingress[a-zA-Z0-9-]+)
curl -sS "https://raw.githubusercontent.com/kubernetes-sigs/aws-alb-ingress-controller/v1.1.4/docs/examples/alb-ingress-controller.yaml"      | sed "s/# - --cluster-name=devCluster/- --cluster-name=mfe/g"      | kubectl apply -f -
kubectl logs -n kube-system $(kubectl get po -n kube-system | egrep -o alb-ingress[a-zA-Z0-9-]+)
clear
curl -sS "https://raw.githubusercontent.com/kubernetes-sigs/aws-alb-ingress-controller/v2.1.0/docs/examples/alb-ingress-controller.yaml"      | sed "s/# - --cluster-name=devCluster/- --cluster-name=mfe/g"      | kubectl apply -f -
kubectl logs -n kube-system $(kubectl get po -n kube-system | egrep -o alb-ingress[a-zA-Z0-9-]+)
curl -sS "https://raw.githubusercontent.com/kubernetes-sigs/aws-alb-ingress-controller/v1.1.4/docs/examples/alb-ingress-controller.yaml"      | sed "s/# - --cluster-name=devCluster/- --cluster-name=mfe/g"      | kubectl apply -f -
kubectl logs -n kube-system $(kubectl get po -n kube-system | egrep -o alb-ingress[a-zA-Z0-9-]+)
ls
cd shabbir
ls
vi msa-ingress.yaml
ls
cp msa-ingress.yaml test-ingres.yaml
vi test-ingres.yaml
kubectl apply -f test-ingres.yaml
cd ~
ls
vi ingress.yaml
kubectl apply -f ingress.yaml
kubectl get ingress
vi ingress.yaml
kubectl apply -f ingress.yaml
vi ingress.yaml
rm -rf ingress.yaml
vi ing.yaml
kubectl apply -f ingress.yaml
vi ing.yaml
kubectl apply -f ingress.yaml
vi ing.yaml
rm -rf ing.yaml
vi ing.yaml
kubectl apply -f ingress.yaml
vi ing.yaml
kubectl apply -f ingress.yaml
vi ing.yaml
kubectl apply -f ingress.yaml
ls
kubectl apply -f ing.yaml
rm -rf ing.yaml
vi ing.yaml
kubectl apply -f ing.yaml
vi ing.yaml
kubectl apply -f ing.yaml
rm -rf ing.yaml
vi ing.yaml
kubectl apply -f ing.yaml
vi ing.yaml
kubectl apply -f ing.yaml
vi ing.yaml
cd shabbir
ls
kubectl apply -f msa-ingress.yaml
vi msa-ingress.yaml
kubectl apply -f  
clear
ls
kubectl apply -f msa-1.yaml
kubectl apply -f bff-1.yaml
kubectl apply -f msa-2.yaml
kubectl apply -f bff-2.yaml
kubectl apply -f bff-ingress.yaml
kubectl get ingress
kubectl delete ingress ingress
cear
clear
ls
kubectl get deployment
clear
ls
vi msa-ingress.yaml
kubectl apply -f msa-ingress.yaml
vi msa-ingress.yaml
kubectl apply -f msa-ingress.yaml
vi ~/ing.yaml
clear
ls
vi cd ~
cd ~
ls
vi test2.yaml
ls
vi ingress-controleer.yaml
kubectl get pods -n kube-system 
ls
vi ingress-controleer.yaml
foo@bar:~$ kubectl describe deployment  -n kube-system  alb-ingress-controller | grep Image
kubectl describe deployment  -n kube-system  alb-ingress-controller | grep Image
eksctl utils associate-iam-oidc-provider --cluster=mfe --approve
kubectl apply --validate=false -f https://github.com/jetstack/cert-manager/releases/download/v1.0.2/cert-manager.yaml
wget https://raw.githubusercontent.com/kubernetes-sigs/aws-alb-ingress-controller/main/docs/install/v2_0_0_full.yaml
ls
vi v2_0_0_full.yaml
kubectl apply -f install_v2_0_0.yaml
kubectl apply -f v2_0_0_full.yaml
kubectl get pods -n kube-system 
ls
cd shabbir
ls
cd ~
ls
kubectl logs -n kube-system   deployment.apps/aws-load-balancer-controllerkubectl logs -n kube-system   deployment.apps/aws-load-balancer-controller
kubectl logs -n kube-system   deployment.apps/aws-load-balancer-controller
ls
kubectl get po
curl -sS "https://raw.githubusercontent.com/kubernetes-sigs/aws-alb-ingress-controller/v1.1.4/docs/examples/alb-ingress-controller.yaml"      | sed "s/# - --cluster-name=devCluster/- --cluster-name=mfe/g"      | kubectl delete -f -
kubectl get pods -n kube-system
kubectl get ingress
ls
vi test.yaml
kubectl apply -f test.yaml
vi test2.yaml
vi test.yaml
kubectl delete ingress ingress test-ingress
ls
cd shabbir
ls
kubectl apply -f msa-1.yaml
vi msa-1.yaml
vi msa-ingress.yaml
vi test-ingres.yaml
kubectl apply -f test-ingres.yaml
vi test-ingres.yaml
kubectl apply -f test-ingres.yaml
vi test-ingres.yaml
kubectl get ingress
vi test-ingres.yaml
kubectl apply -f test-ingres.yaml
kubectl get ingress
vi msa-ingress.yaml
ls
kubectl get svc
kubectl delete svc msa-2
ls
vi msa-2.yaml
kubectl get svc
kubectl apply -f  msa-2.yaml
kubectl get svc
vi msa-ingress.yaml
kubectl apply - msa-ingress.yaml
kubectl apply -f msa-ingress.yaml
vi msa-ingress.yaml
kubectl apply -f msa-ingress.yaml
vi msa-ingress.yaml
kubectl get svc
kubectl apply -f msa-ingress.yaml
vi msa-ingress.yaml
kubectl apply -f msa-ingress.yaml
kubectl get deploy
kubectl delete deploy msa-1
kubectl delete svc  msa-1
kubectl apply -f msa-ingress.yaml
vi msa-ingress.yaml
ls
vi test-ingres.yaml
kubectl apply -f msa-1.yaml
kubectl apply -f msa-ingress.yaml
kubectl get po -o wide
kubectl apply -f bff-1.yaml
vi test-ingres.yaml
kubectl apply -f test-ingres.yaml
vi msa-2.yaml
kubectl apply -f msa-2.yaml
vi msa-ingress.yaml
kubectl apply -f msa-2.yaml
vi msa-ingress.yaml
ls
kubectl get svc
kubectl get ingress
kubectl delete ingress msa ingress
clear
cd ~
ls
vi node.yaml
clear
ls
cd newcode
ls
docker images
docker rmi -f docker system prune
docker system prune
ls
docker images
docker rmi -f aa6 3b4d 47f4 19f 7d3 13a b53 
docker imsages
docker ls
docker images
.docker rmi 41b 389
docker rmi 41b 389
clea
clear
ls
mv class.tar class
mv class2.tar class2
cd class
ls
cd r*
ls
vi c*
vi r*
cd ..
ls
vi s*
ls
vi p*
ls
vi Dockerfile
docker build -t class:v1.0.0 .
cd ..
ls
cd class2
ls
cd r*
ls
vi c*
vi r*
ls
cd ..
ls
vi s*
vi D
vi D*
docker build -t class:v2.0.0 .
docker images
docker run --rm -dit -p 3001:3001 class:v1.0.0
docker ps
docker commit 206e9fbe7897
docker tag class:v1.0.0 346549/class:v1.0.0
docker push images 346549/class:v1.0.0
docker image push  346549/class:v1.0.0
docker stop 206e9fbe7897
history
docker run --rm -dit -p 3001:3001 class:v2.0.0
docker ps
docker commit 2483ff4194fa
docker tag class:v2.0.0
docker tag class:v2.0.0 346549/class:v2.0.0
docker image push  346549/class:v2.0.0
clear
docker ps
docker stop 2483ff4194fa
cd ~
ls
clear
ls
eksctl create nodegroup -f node.yaml
ls
eksctl utils associate-iam-oidc-provider --region us-east-1 --cluster=mfe --approve
curl -o iam-policy.json https://raw.githubusercontent.com/kubernetes-sigs/aws-alb-ingress-controller/main/docs/install/iam_policy.json
aws iam create-policy --policy-name AWSLoadBalancerControllerIAMPolicy  --policy-document file://iam-policy.json
aws iam create-policy --policy-name shabbirAWSLoadBalancerControllerIAMPolicy  --policy-document file://iam-policy.json
iamserviceaccount --cluster=mfe --namespace=kube-system --name=aws-load-balancer-controller  --attach-policy-arn=arn:aws:iam::<AWS_ACCOUNT_ID>:policy/AWSLoadBalancerControllerIAMPolicy --approve
iamserviceaccount --cluster=mfe --namespace=kube-system --name=aws-load-balancer-controller  --attach-policy-arn=arn:aws:iam::955470930558:policy/shabbirAWSLoadBalancerControllerIAMPolicy  --approve
eksctl create iamserviceaccount --cluster=mfe --namespace=kube-system --name=aws-load-balancer-controller  --attach-policy-arn=arn:aws:iam::955470930558:policy/shabbirAWSLoadBalancerControllerIAMPolicy  --approve
kubectl apply --validate=false -f https://github.com/jetstack/cert-manager/releases/download/v1.0.2/cert-manager.yaml
kubectl apply -f v2_0_0_full.yaml
kubectl get po -n kube-system
clear
history
clear
ls
cd shabbir
ls
vi msa-1.yaml
kubectl apply -f msa-1.yaml
vi msa-ingress.yaml
kubectl apply -f msa-ingress.yaml
kubectl get ingress
ls
cd ~
ls
cd shabbir
ls
cd cd ~/newcode
ls
cd ~
ls
cd newcode
ls
mv class-bff.tar class-bff 
mv class-bff2.tar class-bff2 
ls
mv class-bff-2.tar class-bff2 
ls
clear
ls
cd class-bff
ls
cd r*
ls
vi c*
vi r*
vi c*
vi r*
ls
cd ..
ls
vi s*
vi p*
vi Dockerfile
docker build -t class-bff:v1.0.0 .
docker images
docker run --rm -dit -p 3002:3002 class-bff:v1.0.0
cd r*
vi r*
cd ..
ls
history
docker build -t class-bff:v1.0.0 .
docker run --rm -dit -p 3002:3002 class-bff:v1.0.0
docke rps
docker ps
cd r*
ls
vi r*
cd ..
ls
docker build -t class-bff:v1.0.0 .
docker run --rm -dit -p 3002:3002 class-bff:v1.0.0
docker ps
docker stop 902
docker run --rm -dit -p 3002:3002 class-bff:v1.0.0
docker ps
docker commit 28419f129951
docker tag class-bff:v1.0.0 346549/class-bff:v1.0.0
docker image push 346549/class-bff:v1.0.0
clear
docker ps
history
docker build -t class-bff:v2.0.0
docker build -t class-bff:v2.0.0 .
docker ps
history
docker run --rm -dit -p 3002:3002 class-bff:v2.0.0
docker ps
ls
vi s*
cd r*
ls
vo c*
vi c*
vi r*
cd ..
l
ls
cd ..
ls
cd class-bff2
la
cd r*
ls
vi c*
vi r*
lscd ..
cd ..
ls
history
docker build -t class-bff:v2.0.0 .
history
docker run --rm -dit -p 3002:3002 class-bff:v2.0.0
docker ps
docker stop 65e
docker run --rm -dit -p 3002:3002 class-bff:v2.0.0
docker ps
docker commit 38ef25f318aa
docker tag class-bff:v2.0.0 346549/class-bff:v2.0.0
docker image push 346549/class-bff:v2.0.0
clear
docker ps 
cd ~
cd shabbir
ls
vi bff-ingress.yaml
kubectl apply -f bff-ingress.yaml
vi bff-ingress.yaml
kubectl apply -f bff-ingress.yaml
vi msa-ingress.yaml
vi bff-ingress.yaml
kubectl apply -f bff-ingress.yaml
vi bff-ingress.yaml
cd ~
ls
cd shabbir
ls
cd ~
ls
cd newcode
ls
clear
ls
cd class2 
ls
cd r*
ls
vi c*
vi r*
cd ..
ls
cd ..
ls
cd class-bff2
ls
cd r*
ls
vi c*
vi r*
vi c*
cd ~/shabbir
ls
vi bff-1.yaml
kubectl apply -f bff-1.yaml
kubectl get po
kubectl delete po bff-1-67bd4668ff-57xg7
kubectl get po
history
docker ps
docker stop c78
ls
vi bff-1.yaml
kubectl apply -f bff-1.yaml
vi bff-2.yaml
kubectl apply -f bff-2.yaml
clear
ls
cd ~
ls
cd newbff
ls
cd app
ls
cd newbff
ls
cd r*
ls
vi r*
clear
cd ~
ls
vi node.yaml
eksctl create nodegroup -f node.yaml
ls
eksctl utils associate-iam-oidc-provider --region us-east-1 --cluster=mfe --approve
eksctl create iamserviceaccount --cluster=mfe --namespace=kube-system --name=aws-load-balancer-controller  --attach-policy-arn=arn:aws:iam::955470930558:policy/shabbirAWSLoadBalancerControllerIAMPolicy  --approve
kubectl apply --validate=false -f https://github.com/jetstack/cert-manager/releases/download/v1.0.2/cert-manager.yaml
clear
kubectl apply --validate=false -f https://github.com/jetstack/cert-manager/releases/download/v1.0.2/cert-manager.yaml
kubectl apply -f v2_0_0_full.yaml
kuebctl get pods -n kube-system
kubectl get pods -n kube-system
clear
ls
cd newcode
ls
cd newbff
ls
cd r*
ls
vi c*
vi r*
docker run --rm -dit -p 3002:3002 class-bff:v1.2.0
docker images
docker run --rm -dit -p 3002:3002 class-bff:1.2.0
docker ps
docker stop 5a8
docker run --rm -dit -p 3002:3002 class-bff:1.2.0
docker ps
docker commit 050ac44f478e
docker tag class-bff:1.2.0 346549/class-bff:1.2.0
docker image push 346549/class-bff:1.2.0
history
cd ..
ls
cd ~
ls
cd shabbir
ls
vi bff-1.yaml
kubectl apply -f bff-1.yaml
vi bff-2.yaml
kubectl apply -f bff-2.yaml
vi bff-ingress.yaml
kubectl apply -f bff-ingress.yaml
vi bff-ingress.yaml
kubectl apply -f bff-ingress.yaml
vi bff-ingress.yaml
kubectl apply -f bff-ingress.yaml
vi bff-ingress.yaml
clear
ng --version
ng build
ls
cd ~
ls
cd newcode
ls
cd 'mfe1.tar (3)'
ls
cd mfe*
ls
cd ~
clear
ls
cd shabbir
ls
vi msa-ingress.yaml
kubectl apply -f msa-ingress.yaml
vi  bff-ingress.yaml
kubectl apply -f bff-ingress.yaml
vi  bff-ingress.yaml
kubectl apply -f bff-ingress.yaml
vi msa-ingress.yaml
kubectl apply -f msa-ingress.yaml
vi bff-ingress.yaml
clear
vi bff-ingress.yaml
kubectl apply -f bff-ingress.yaml
ls
vi msa-ingress.yaml
kubectl apply -f bff-ingress.yaml
kubectl apply -f msa-ingress.yaml
vi msa-ingress.yaml
kubectl apply -f msa-ingress.yaml
vi bff-ingress.yaml
kubectl apply -f bff-ingress.yaml
vi bff-ingress.yaml
kubectl apply -f bff-ingress.yaml
vi msa-ingress.yaml
kubectl apply -f msa-ingress.yaml
clear
ls
vi msa-ingress.yaml
eksctl delete cluster -f ~/cluster.yaml
clear
ls
cd ~
mkdir azure
cd azure
ls
New-AzResourceGroup -Name myResourceGroup -Location eastus
sudo az aks install-cli
az aks install-cli
az
az aks
curl -sL https://aka.ms/InstallAzureCLIDeb | sudo bash
az
az login
az login -u shabbier.vempalli@aspiresys.com -p Genband@3465490
az login --identity
az login -u <username> -p <password>
az aks list
az login
kubectl get nodes
az aks get-credentials --resource-group myResourceGroup --name myAKSCluster
kubectl get nodes
clear
kubectl describe nodes
vi azure-vote.yaml
kubectl apply -f azure-vote.yaml
clear
kubectl get pods
kubectl get svc
kubectl get service azure-vote-front --watch
az group delete --name myResourceGroup --yes --no-wait
kubectl get nodes
az group delete --name myResourceGroup --yes --no-wait
cd ..
ls
cd cluster.yaml
vi cluster.yaml
eksctl create cluster -f cluster.yaml
vi cluster.yaml
ls
cd shabbir
ls
vi msa-ingress.yaml
vi ~/cd ~
ls
cd ~
ls
vi c*
eksctl create cluster -f cluster.yaml
ls
vi rm -rf cluster.yaml
rm -rf cluster.yaml
ls
vi cluster.yaml
eksctl create cluster -f apiVersion: eksctl.io/v1alpha5
kind: ClusterConfig
metadata:
vpc:
eksctl create cluster -f cluster.yaml
vi c*
eksctl create cluster -f cluster.yaml
ls
vi ingress-controleer.yaml
more ingress-controleer.yaml
q!
ls
vi ingress-controleer.yaml
kubectl apply -f ingress-controleer.yaml
ls
vi ing.yaml
kubectl apply -f ing.yaml
vi ing.yaml
kubectl apply -f ing.yaml
ls
vi test.yaml
kubectl apply -f test.yaml
kubectl get ingress
kubectl delete ingress bff msa
clear
vi test.yaml
ls
kubectl get ingress
ls
vi t*
ls
vi t*
cp test.yaml test2.yaml
vi test2.yaml
kubectl apply -f test2.yaml
vi test2.yaml
kubectl apply -f test2.yaml
vi test2.yaml
kubectl apply -f test2.yaml
vi test2.yaml
kubectl apply -f test2.yaml
vi test2.yaml
kubectl apply -f test2.yaml
vi test2.yaml
vi test.yaml
kubectl apply -f test.yaml
vi test.yaml
kubectl apply -f test.yaml
kubectl get ingress
kubectl delete ingress ingress
kubectl delete  ingress -f ingress
kubectl delete ing ingress --grace-period=0 --force
sl
ls
clear
kubectl get deploy
kubectl delete deploy bff-2 bff-1
kubectl get deploy
clear
ls
cd shabbir
ls
vi msa-ingress.yaml
kubectl apply -f msa-ingress.yaml
vi msa-ingress.yaml
kubectl get ingress
kubectl get svc
kubectl get deploy
kubectl get ingress
ls
vi msa-ingress.yaml
kubectl apply -f msa-ingress.yaml
kubectl get ingress
kubectl delete ingress msa
kubectl apply -f msa-ingress.yaml
kubectl get ingress
ls
kubectl gt deploy 
kubectl get deploy 
kubectl delete deploy msa-1 msa-2
clear
kubectl get svc
kubectl delete svc bff-1 bff-2 msa-1 msa-2
clkear
clear
kubectl get svc
kubectl get po
kubectl get po -n kube-system
ls
llkubectl get ingress
kubectl get ingress
kubectl delete ingress msa
kubectl delete ingress ingress --force
ls
cd ~
ls
kubectl appy -f test2.yaml
kubectl apply -f test2.yaml
kubectl delete -f  test2.yaml
cd shabbir
ls
kubectl apply -f msa-2
kubectl apply -f msa-2.yaml
ls
vi msa-ingress.yaml
kubectl apply -f msa-ingress.yaml
vi msa-ingress.yaml
kubectl apply -f msa-ingress.yaml
vi msa-ingress.yaml
clear
kubectl get nodes
ls
cd ~
ls
cd newcode
ls
cd class.tar
ls
cd r*
ls
vi c*
cd ~
eksctl delete cluster -f cluster.yaml
eksctl create  cluster -f cluster.yaml
docker ps
docker stop 84b eef
cd shabbir
ls
vi bff-1.yaml
kubectl apply -f bff-1.yaml
vi bff-ingress.yaml
kubectl apply -f bff-ingress.yaml
kubectl get ingress
docker ps
docker stop 284
ls
clear
cd newcode
ls
cd ..
ls
cd newcode
ls
cd class-bff2
ls
vi D*
cd r*
ls
vi c*
vi r*
cd ..
ls
history
cd ~/shabbir
ls
vi msa-2.yaml
kubectl apply -f msa-2.yaml
kubectl get po
vi bff-2.yaml
kubectl apply -f bff-2.yaml
kubectl get po
kubectl get all
clear
ls
vi msa-ingress.yaml
kubectl apply -f msa-ingress.yaml
vi msa-ingress.yaml
kubectl apply -f msa-ingress.yaml
vi msa-ingress.yaml
ls
mkdir gitto
cp * gitto
cp -r  * gitto
ls
cd gitto
ls
cd ..
git remote add https://github.com/shabbier0473/kubernetes.git
git init
git remote add https://github.com/shabbier0473/kubernetes.git
git remote add https://github.com/shabbier0473/kubernetes.git 
git remote add https://github.com/shabbier0473/kubernetes.git  --no-tags
git remote add origin https://github.com/shabbier0473/kubernetes.git  
git add .
git commit -m "all"
git push origin
git push origin --set-upstream
git push --set-upstream origin master
cd ~
ls
mkdir newbff
cd newbff
ls
git clone https://github.com/shabbier0473/app.git
ls
cd app
ls
cp newbff ~/newcode
cp -r newbff ~/newcode
cd ~/newcode
ls
cd newbff
ls
cd r*
ls
vi c*
vi r*
clear
ls
docker images
cd ..
ls
cd ..
ls
cd class-bff
ls
cp Dockerfile ../newbff
cd ../newbff
ls
cd r*
ls
vi c*
vi r*
vi D*
cd ..
l
ls
vi D*
vi s*
docker build -t class-bff:v1.0.0
docker build -t class-bff:v1.0.0 .
docker run --rm -dit -p 3002:3002 class-bff:v1.0.0
docker ps
docker stop 38e
docker run --rm -dit -p 3002:3002 class-bff:v1.0.0
docker ps
docker commit c788b0174e40
docker tag class-bff:v1.0.0 346549/class-bff:v1.0.0
docker image push 346549/class-bff:v1.0.0
history
docker build -t class-bff:v1.1.0
docker build -t class-bff:v1.1.0 .
history
docker run --rm -dit -p 3002:3002 class-bff:v1.1.0
docker ps
docker commit 1b68134ea674
docker tag class-bff:v1.1.0 346549/class-bff:v1.1.0
docker image push 346549/class-bff:v1.1.0
ls
cd r*
ls
vi c*
vi r*
docker build -t class-bff:v2.1.0 .
cd ..
ls
docker build -t class-bff:v2.1.0 .
history
docker run --rm -dit -p 3002:3002 class-bff:v2.1.0
docker ps
docker stop 1b6
docker run --rm -dit -p 3002:3002 class-bff:v2.1.0
docker ps
docker commit 5a8a2deb46c3
docker tag class-bff:v2.1.0 346549/class-bff:v2.1.0
docker image push 346549/class-bff:v2.1.0
clear
cd ~
ls
vi v2_0_0_full.yaml
cd ~
eksctl delete cluster -f cluster.yaml
eksctl get cluster
clear
ls
eksctl create cluster -f cluster.yaml
clear
ls
cd ~/app
ls
cd mfe1-src.tar 
ls
ng build
npm install --save-dev @angular-devkit/build-angular
npm install -g npm
ng build
npm install
ng build
ng --version
ng build
node --version
npm --version
ng --version
ls
clear
vi angu*
ls
cd src
ls
cd app
ls
cd ..
ls
cd ~
ls
clear
eksctl create cluster -f cluster.yaml
ls
vi c*
eksctl create cluster -f cluster.yaml
vi c*
eksctl create cluster -f cluster.yaml
cd ~/shabbir
ls
kubectl apply -f msa-1.yaml
kubectl apply -f msa-2.yaml
kubectl get all
kubectl apply -f msa-ingress.yaml
kubectl get ingress
vi msa-ingress.yaml
kubectl apply -f msa-ingress.yaml
kubectl get ingress
vi msa-ingress.yaml
kubectl apply -f msa-ingress.yaml
cd ~
ls
cd newbff
ls
cd app
ls
cd newbff
ls
cd r*
ls
vi c*
cd ~
ls
cd newcode
ls
cd nebff
cd newff
cd newbff
ls
cd r*
ls
vi c*
vi r*
cd ..
ls
vi D*
docker images
docker build -t class-bff:2.2.0 .
docker rmi class-bff:2.2.0
docker build -t class-bff:1.2.0 .
docker build -t class-bff:2.2.0 .
docker ps
docker stop 050
docker run --rm -dit -p 3002:3002 class-bff:2.2.0
docker ps
docker commit 5b86fbf78bb1
docker tag class-bff:2.2.0 346549/class-bff:2.2.0
ocker image push 346549/class-bff:2.2.0
docker image push 346549/class-bff:2.2.0
clear
cd ~/
ls
cd shabbir
ls
vi bff-ingress.yaml
kubectl apply -f bff-ingress.yaml
vi msa-ingress.yaml
kubectl apply -f msa-ingress.yaml
vi msa-ingress.yaml
kubectl apply -f msa-ingress.yaml
ls
cd ..
ls
cd newcode
ls
cd 'mfe1.tar (3)'
ls
cd mfe1
ls
cd ~
ls
cd app
ls
cd mfe1-src.tar
ls
ng build
npm install
ng serve
clear
ng --version
ng @schematics/update
ng build @schematics/update
clear
