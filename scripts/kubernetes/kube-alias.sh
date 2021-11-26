#!/bin/bash

echo 'alias k=kubectl.exe' >>~/.bashrc
echo 'alias kg="k get "' >>~/.bashrc
echo 'alias kgp="kg pod "' >>~/.bashrc
echo 'alias kgd="kg deployment "' >>~/.bashrc
echo 'alias krm="k delete "' >>~/.bashrc
echo 'alias krmp="krm pod "' >>~/.bashrc
echo 'alias krmd="krm deployment "' >>~/.bashrc
echo 'alias kd="k describe "' >>~/.bashrc
echo 'alias kdp="kd pod "' >>~/.bashrc
echo 'alias kdd="kd deployment "' >>~/.bashrc
echo 'alias ka="k apply -f "' >>~/.bashrc
echo 'alias ke="k edit "' >>~/.bashrc

complete -F __start_kubectl k
source <(kubectl completion bash)
