#!/bin/bash
set -euxo pipefail

# Install k3s as a single-node "server" (control-plane + worker combined)
curl -sfL https://get.k3s.io | sh -s - --write-kubeconfig-mode 644

# Wait until the node reports Ready before user_data "finishes"
until /usr/local/bin/k3s kubectl get nodes 2>/dev/null | grep -q " Ready"; do
  sleep 5
done
