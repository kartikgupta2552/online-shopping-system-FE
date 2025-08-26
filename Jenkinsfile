pipeline {
  agent any

  environment {
    NODE_HOME = tool name: 'summon_the_node_beast', type: 'NodeJS'
    PATH = "${env.NODE_HOME}/bin:${env.PATH}"
  }

  stages {
    stage('Install Dependencies') {
      steps {
        echo 'Installing dependencies with Yarn...'
        sh 'yarn install'  // Yarn instead of npm
      }
    }

    stage('Build') {
      steps {
        echo 'Building React app with Yarn...'
        sh 'yarn build'  // Build your React project
      }
    }

    stage('Deploy') {
      steps {
        echo 'Deploying to local Mac folder...'
        // Copy the build folder to a local directory, replace with your actual local target path
        sh 'cp -r build/* /Users/tushar/test'  
      }
    }
  }

  post {
    success {
      echo 'Local deployment success! Celebrate with coffee ☕ or beer 🍺.'
    }
    failure {
      echo 'Deployment failed. Cry a bit and check the logs.'
    }
  }
}

