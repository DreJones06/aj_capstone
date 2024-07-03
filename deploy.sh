#!/bin/bash
#Script developed to build docker in Dev and Prod based on the Git branch
if [[ $GIT_BRANCH == "origin/Dev" ]]; then
    sh 'chmod +x build.sh'
    sh './build.sh'
        docker login -u drejones06 -p dckr_pat_wDWAxLoonygIJlzcpF75wsWL_d4
    docker tag devops-build drejones06/dev
    docker push drejones06/dev

elif [[ $GIT_BRANCH == "origin/master" ]]; then
    sh 'chmod +x build.sh'
    sh './build.sh'
        docker login -u drejones06 -p dckr_pat_wDWAxLoonygIJlzcpF75wsWL_d4
    docker tag devops-build drejones06/prod 
    docker push drejones06/prod
else
    echo "Execution failed ..! Exiting Script ..! Check deploy.sh file"
fi
