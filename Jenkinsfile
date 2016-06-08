node {
    stage 'Checkout'
    checkout scm
    echo 'Hello from Pipeline'

    stage 'Swift'
    sh 'swift build'
    sh 'swift test'

    stage 'Haskell'
    dir('haskelldemo') {
        sh 'stack setup'
        sh 'stack build'
        sh 'stack test'
    }
}
