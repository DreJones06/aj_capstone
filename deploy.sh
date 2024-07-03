#!/bin/bash
if [[ $GIT_BRANCH == "origin/Dev" ]]; then
    sh 'chmod +x build.sh'
    sh './build.sh'
#    docker login -u drejones06 
    docker tag devops-build drejones06/dev
    docker push drejones06/dev

elif [[ $GIT_BRANCH == "origin/master" ]]; then
    sh 'chmod +x build.sh'
    sh './build.sh'
 #   docker login -u drejones06 
    docker tag devops-build drejones06/prod 
    docker push drejones06/prod
else
    echo "Execution failed ..! Exiting Script ..! Check deploy.sh file"
fi
