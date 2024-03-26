
pipeline {
agent any
stages {
    stage('Terraform Plan') {
        steps {
            script {
                // Execute the terraform plan command
                sh 'terraform plan -out=tfplan'
            }
        }
    }

    stage('Approval Request') {
        steps {
            script {
                // Request approval from the user before applying the changes
                input 'Do you want to apply the changes?'
            }
        }
    }

    stage('Terraform Apply') {
        steps {
            script {
                // Apply the changes using the previously generated tfplan file
                sh 'terraform apply tfplan'
            }
        }
    }
}
}