pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                git 'https://github.com/M-Moussa-De/Amazon.git'
            }
        }

        stage('Install dependencies') {
            steps {
                dir('./web') {
                    sh 'npm install'
                }
            }
        }

        stage('Build Next.js') {
            steps {
                dir('./web') {
                    sh 'npm run build'
                }
            }
        }

        stage('Test Next.js') {
            steps {
                dir('./web') {
                    sh 'npm test'
                }
            }
        }

        stage('Restore ASP.NET Core') {
            steps {
                dir('./API') {
                    sh 'dotnet restore'
                }
            }
        }

        stage('Build ASP.NET Core') {
            steps {
                dir('./API') {
                    sh 'dotnet build --configuration Release'
                }
            }
        }

        stage('Test ASP.NET Core') {
            steps {
                dir('./API') {
                    sh 'dotnet test --no-build --verbosity normal'
                }
            }
        }

        stage('Publish ASP.NET Core') {
            steps {
                dir('./API') {
                    sh 'dotnet publish --configuration Release --output ./publish'
                }
            }
        }
    }
}