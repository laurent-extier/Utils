############################################# LExtier Bash configuration #############################################

export HOME="C:/cygwin64/home/082209706"

# export OSH_THEME="agnoster"


export DOCKER_HOST=tcp://localhost:2375

alias lsa="ls -Al "

alias start='${WLP_HOME}/bin/server start ads-runtime --clean'
alias stop='${WLP_HOME}/bin/server stop ads-runtime'

alias cdp='cd ${ADS_HOME}'

alias mvno="mvn -Dmaven.wagon.http.ssl.insecure=true"
alias mvnci="mvno clean install"
alias mvnst="mvno clean install -Dmaven.test.skip=true"
alias mvnt="mvno test"
alias cl='rm -rf ${WLP_ADS_HOME}/apps/* $WLP_ADS_HOME/logs/* $WLP_ADS_HOME/workarea/*'
alias il='cl & cp ${ADS_HOME}/rest-api/target/runtime-rest-api-1.1-SNAPSHOT.war $WLP_ADS_HOME/apps/decision-runtime.war'
alias build='${ADS_HOME}/build.sh'
alias kl='taskkill /f /im java.exe'

alias setJava8='export JAVA_HOME="$JAVA_HOME_8" && export PATH="$JAVA_HOME_8\bin":$PATH'
alias setJava11='export JAVA_HOME="$JAVA_HOME_11" && export PATH="$JAVA_HOME_11\bin":$PATH'

# alias setJava8='export JAVA_HOME="C:\Program Files\Java\jdk1.8.0_361" && export PATH="C:\Program Files\Java\jdk1.8.0_361\bin":$PATH'
# alias setJava11='export JAVA_HOME="C:\Program Files\Java\jdk-11.0.16" && export PATH="C:\Program Files\Java\jdk-11.0.16\bin":$PATH'

alias bridge='java -jar metering-service.jar --com.ibm.rules.metering.loggingLevel=TRACE'

alias dockerrai='docker rmi $(docker images -a -q)'
alias dockersac='docker stop $(docker ps -a -q)'
alias dockerrac='docker rm $(docker ps -a -q)'

alias docker-compose=docker-compose.exe

plugins=(kubectl git bashmarks progress tmux zoxide)

source <(kubectl completion bash)

alias k=kubectl
complete -F __start_kubectl k

alias kc='k create -f'
alias kgp='k get pod -o wide'
alias kn='k config set-context --current --namespace='
export do='--dry-run=client -o yaml'
alias krm='k delete pod --force --grace-period=0'
alias kwget='k run busy --rm -it --image=busybox --restart=Never -- wget -O- --timeout 2'
alias kr='k run '

alias minikube-env='eval $(minikube docker-env)'

######################################################################################################################
