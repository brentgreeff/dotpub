# . <(kubectl completion bash)
# . <(kubectx completion bash)

# alias k=kubectl
# alias x=kubectx

# complete -F __start_kubectl k
# complete -F __start_kubectx x

# use() {
#   set -x
#   k config use-context "$@"
#   set +x
# }

# k config get-contexts
# k config use-context staging

# k get deployment plat -o yaml

# k get all | grep world6

# k cluster-info dump

# kubectl create deployment nginx --image=nginx
# k create -f cluster.yaml --dry-run --validate=true
# k replace -f kube/deployments/database.yaml
# kubectl expose deployment nginx --port 80 --type NodePort

# alias kall="k get all -n staging"

# kmark() {
#   set -x
#   k get all -n staging | grep mark"$@"
#   set +x
# }

# kworld() {
#   set -x
#   k get all -n staging | grep plat-api
#   set +x
# }

# kash() {
#   set -x
#   k exec -it $1 -- bash
#   set +x
# }

# k get svc -n staging
# k get svc --namespace default -w my-nginx

# kubectl port-forward $POD_NAME 8080:80

# nodes() {
#   set -x
#   # k get nodes -o wide --all-namespaces
#   k get nodes -o wide -n staging
#   set +x
# }
# k get pods -l k8s-app=kube-dns -n kube-system

# pods() {
#   set -x
#   # k get pods -o wide --all-namespaces
#   k get pods -o wide -n staging
#   set +x
# }

# desc () {
#   set -x
#   k describe pod/"$@"
#   set +x
# }

# logs() {
#   echo "k logs -f $@"
#   k logs -f "$@"
# }

# e() {
#   set -x
#   k exec -it "$@"
#   set +x
# }

# kenv() {
#   set -x
#   k exec $1 -- env
#   set +x
# }
# k exec download-ddd-ddd -- bin/rails db:migrate

# del() {
#   set -x
#   k delete pod/"$@"
#   set +x
# }

# k get storageclass
