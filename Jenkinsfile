pipeline {
    agent {
      label 'docker_python'
    }
    
    environment {
        PIP_CACHE_DIR = "${WORKSPACE}/.pip-cache"
        CON = credentials('0cd30024-7a31-4bb7-9019-2f442dc75b65')
    }

    stages {
        stage('Pre_build') {
          steps {
            echo 'pre build'
            sh 'git clone https://github.com/Steven-Maurice/test_jenkins'
            
            echo 'Installation packages python'
            sh 'python3 -m pip install --cache-dir=${PIP_CACHE_DIR} --break-system-packages pytest pylint'
          }
        }

        stage('Build') {
            steps {
                echo 'Building..'
                // Ajoutez vos commandes de build ici
            }
        }
        stage('Test unitaire') {
            steps {
                echo 'Testing..'
            }
        }
        stage('Test format code') {
            steps {
                sh 'python3 -m pylint **/*.py'
            }
        }
        stage('Deploy') {
            steps {
                echo 'Deploying..'
                            
                echo 'login to dockerhub'
                
            }
        }
    }
}
