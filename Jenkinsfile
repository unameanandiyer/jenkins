node {
    // some block


    stage('GitCheckout') {
       git branch: 'jenkins', url: 'https://github.com/amitvashisttech/devops-ericsson-08-Dec-2022.git'
    }

    stage('Maven Job - Clean') {
        sh 'mvn clean'
    }

    stage('Maven Job - Compile') {
        sh 'mvn compile'
    }

    stage('Maven Job - Test') {
         sh 'mvn test'
    }

    stage('Maven Job - Package') {
        sh 'mvn package'
    }


    stage('Archive - Artifacts') {
         archiveArtifacts artifacts: 'target/*.war', followSymlinks: false
    }

    stage('Say Hi') {
        sh 'echo "Welcome to the world of Jenkins"'
    }
}
