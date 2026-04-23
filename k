#!/usr/bin/env bash
ark get k3sup kubecolor kubectl k9s ktop flux helm

cat <<-EOF >>~/.bashrc.local
	alias k=kubectl
	k() { kubecolor "$@"; }
	complete -F __start_kubectl k
	export KUBECONFIG=~/kubeconfig
EOF
