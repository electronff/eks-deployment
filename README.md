# EKS Getting Started Guide Configuration

This is the full configuration from https://www.terraform.io/docs/providers/aws/guides/eks-getting-started.html

See that guide for additional information.

NOTE: This full configuration utilizes the [Terraform http provider](https://www.terraform.io/docs/providers/http/index.html) to call out to icanhazip.com to determine your local workstation external IP for easily configuring EC2 Security Group access to the Kubernetes servers. Feel free to replace this as necessary.

https://github.com/marketplace/actions/push-to-amazon-ecr

https://github.com/GavinRay97/garden-eks-deploy-action

https://github.com/marketplace/actions/push-to-amazon-ecr



https://aws.amazon.com/premiumsupport/knowledge-center/eks-generate-kubeconfig-file-for-cluster/


ArgoCD

https://github.com/bappy776/eks-argocd-application/blob/main/README.md



In order to access the server UI you have the following options:

1. kubectl port-forward service/my-argo-cd-argocd-server -n default 8080:443

   and then open the browser on http://localhost:8080 and accept the certificate

/argoproj/argo-cd/blob/master/docs/operator-manual/ingress.md#option-2-multiple-ingress-objects-and-hosts

    option-1-ssl-passthrough

    /argoproj/argo-cd/blob/master/docs/operator-manual/ingress.md#option-2-multiple-ingress-objects-and-hosts

After reaching the UI the first time you can login with username: admin and the random password generated during the installation. You can find the password by running:

    n. You can find the password by running:

kubectl -n default get secret argocd-initial-admin-secret -o jsonpath="{.data.password}" | base64 -d

(You should delete the initial secret afterwards as suggested by the Getting Started Guide: https://github.com/argoproj/argo-cd/blob/master/docs/getting_started.md#4-login-using-the-cli)



In order to access the server UI you have the following options:

1. kubectl port-forward service/my-argo-cd-argocd-server -n default 8080:443

   and then open the browser on http://localhost:8080 and accept the certificate

/argoproj/argo-cd/blob/master/docs/operator-manual/ingress.md#option-2-multiple-ingress-objects-and-hosts

    option-1-ssl-passthrough

    /argoproj/argo-cd/blob/master/docs/operator-manual/ingress.md#option-2-multiple-ingress-objects-and-hosts

After reaching the UI the first time you can login with username: admin and the random password generated during the installation. You can find the password by running:

    n. You can find the password by running:

kubectl -n default get secret argocd-initial-admin-secret -o jsonpath="{.data.password}" | base64 -d

(You should delete the initial secret afterwards as suggested by the Getting Started Guide: https://github.com/argoproj/argo-cd/blob/master/docs/getting_started.md#4-login-using-the-cli)
