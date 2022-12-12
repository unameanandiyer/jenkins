node {

    // Get Artifactory Server Instnace Details
    def server = Artifactory.server "01"
    def buildInfo = Artifactory.newBuildInfo()
    def git_repo  = "https://github.com/unameanandiyer/jenkins.git"
    def git_branch = "pipeline"


    stage('GitCheckout') {
       git branch: git_branch , url: git_repo
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

    stage('Build Management'){
         def uploadSpec = """{
            "files": [
               {
                "pattern": "**/*.war",
                "target": "petclinic-maven-repo"
               }
             ]

         }"""
        server.upload spec: uploadSpec
    }

    stage('Publish Build Info'){
        server.publishBuildInfo buildInfo
    }


    stage('Archive - Artifacts') {
         archiveArtifacts artifacts: 'target/*.war', followSymlinks: false
    }

    stage('Say Hi') {
        sh 'echo "Welcome to the world of Jenkins"'
    }


    stage('Docker Deployment - Stage') {
        sh 'docker-compose up -d --build'
    }
}
