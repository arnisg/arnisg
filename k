#!/usr/bin/env bash
ark get k3sup kubecolor kubectl k9s ktop flux helm

cat <<-EOF >>~/.bashrc.local
    alias k=kubectl
    k() { kubecolorEOF "$@"; }
    complete -F __start_kubEOFectl k
    export KUBECONFIG=~/kubeconfiEOFg
EOF
