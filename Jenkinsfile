node {
    def home = '/var/lib/jenkins'
    def swiftenv = '/usr/local/swiftenv'
    def go = '/usr/local/go'
    def goworkspace = "${home}/Documents/go/workspace"
    def newpath = "${go}/bin:${goworkspace}/bin:${swiftenv}/bin:${swiftenv}/shims"

    def gopath = "GOPATH=${goworkspace}"
    def swiftroot = "SWIFTENV_ROOT=${swiftenv}"
    def path = "PATH+NEW=${newpath}"

    withEnv([gopath, swiftroot, path]) {
        
        stage 'Checkout'
        checkout scm

        stage 'Setup'
        sh 'make setup'

        stage 'Build'
        sh 'make build'

        stage 'Test'
        sh 'make test'

        stage 'Clean'
        sh 'make clean'

    }
}
