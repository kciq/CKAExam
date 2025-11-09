#!/bin/bash
# ---------------------------------------------
# LAB 01 — ArgoCD Helm (sem CRDs)
# ---------------------------------------------
set -e

echo "📦 [STEP] Creating namespace 'argocd'..."
kubectl create namespace argocd --dry-run=client -o yaml | kubectl apply -f - >/dev/null

echo "🔗 [STEP] Adding ArgoCD Helm repository..."
helm repo add argocd https://argoproj.github.io/argo-helm >/dev/null 2>&1
helm repo update >/dev/null 2>&1

cat <<MSG

✅ Environment Ready!

👉 TASKS TO DO:
1. Generate the ArgoCD manifest via Helm:
   helm template argocd argocd/argo-cd \\
     --namespace argocd \\
     --version 7.7.3 \\
     --set installCRDs=false \\
     > /root/argo-helm.yaml

2. Do NOT apply the YAML. Just generate it.
3. Validation will check for:
   - The file existence
   - The absence of CRDs
   - The presence of ArgoCD components (like argocd-server)

🧾 When ready, run:
   ./validate-lab.sh 1
MSG