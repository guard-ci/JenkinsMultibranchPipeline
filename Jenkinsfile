node {
    stage 'Checkout'
    checkout scm

    stage 'Setup'
    sh 'go get github.com/stretchr/testify/assert'

    stage 'Swift'
    sh 'swift build'
    sh 'swift test'

    stage 'Haskell'
    dir('haskelldemo') {
        sh 'stack setup'
        sh 'stack build'
        sh 'stack test'
    }

    stage 'Go'
    sh 'go build'
    sh 'go test'
}
