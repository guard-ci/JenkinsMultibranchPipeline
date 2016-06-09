node {
    stage 'Checkout'
    checkout scm

    stage 'Setup'
    sh 'make setup'

    stage 'Build'
    sh 'make build'

    stage 'Test'
    sh 'make test'
}
