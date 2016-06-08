node {
    stage 'Checkout'
    checkout scm
    echo 'Hello from Pipeline'

    stage 'Swift'
    sh 'swift build'
    sh 'swift test'
}
