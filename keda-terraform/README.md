# KEDA via Terraform + Helm

## Prerequisites
- Terraform >= 1.3
- A working kubeconfig for your cluster (kubectl can connect)

## Variables
- `kubeconfig_path`: Path to kubeconfig (default `~/.kube/config`)
- `kubeconfig_context`: Optional kubeconfig context name
- `keda_namespace`: Target namespace (default `keda`)
- `keda_chart_version`: Optional chart version (e.g. `2.16.0`); if null, latest will be used
- `keda_values`: Optional additional Helm values (HCL map)

## Usage
```bash
terraform init
terraform plan \
  -var kubeconfig_path="~/.kube/config" \
  -var keda_namespace="keda"

terraform apply -auto-approve \
  -var kubeconfig_path="~/.kube/config" \
  -var keda_namespace="keda"
```

### Example custom values
```bash
terraform apply -auto-approve \
  -var 'keda_values={metricsServer={enabled=true}}'
```

## Verify
```bash
kubectl -n keda get pods
```

## Destroy
```bash
terraform destroy -auto-approve
```