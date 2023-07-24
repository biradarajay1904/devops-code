```
kubectl apply -f argcd-manifests.yaml -n argocd 

kubectl apply -f argocd-cm.yml

kubectl apply -f argocd-ingress.yaml -n argocd 
```

**To view the intial admin password:**
--

```kubectl -n argocd get secret argocd-initial-admin-secret -o jsonpath="{.data.password}" | base64 -d```

`Note:` 

argocd-cm.yml is a workaround configmap to be applied to fix the progressing state bug in ingress.