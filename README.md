# kubectl コマンドライン チートシート

## 複数のyamlをapply
`kubectl apply -f ./dir`
<br>
`kubectl apply -f test.yaml -f test.yaml`


## サンプル deployment yamlの作成
`kubectl create deployment nginx --dry-run --image=nginx -o yaml`
<br>


## deployment/Service作成
`kubectl create deployment nginx --image=nginx`
<br>
`kubectl expose deployment/nginx`
<br>


## podを作成
`kubectl run nginx --image=nginx`
<br>
