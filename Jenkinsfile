node {
    stage 'Checkout'
    checkout scm

    stage 'Setup'
    echo "setup"

    stage 'Build'
    sh 'make build_swift'

    stage 'Test'
    sh 'make test_swift'
    sh 'make test_go'
}
