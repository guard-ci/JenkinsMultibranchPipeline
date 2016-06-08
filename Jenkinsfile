node {
    stage 'Checkout'
    checkout scm

    stage 'Setup'
    echo "setup"

    stage 'Build'
    sh 'make build_swift'
    dir('haskelldemo') {
        sh 'make build_haskell'
    }

    stage 'Test'
    sh 'make test_swift'
    dir('haskelldemo') {
        sh 'make test_haskell'
    }
}
