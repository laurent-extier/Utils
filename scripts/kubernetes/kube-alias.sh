#!/bin/bash

echo 'alias k=kubectl.exe' >>~/.bashrc
echo 'alias kg="k get "' >>~/.bashrc
echo 'alias kgp=kg pods' >>~/.bashrc
echo 'alias kgd=kg deployment' >>~/.bashrc
echo 'alias krm="k delete "' >>~/.bashrc
echo 'alias kd="k describe "' >>~/.bashrc
echo 'alias ka="k apply -f "' >>~/.bashrc
echo 'alias ke="k edit "' >>~/.bashrc
echo 'complete -F __start_kubectl k' >>~/.bashrc
echo 'source <(kubectl completion bash)'
