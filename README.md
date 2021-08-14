# Local Lambda to Lambda Invocation

This repository is a sample for invoking one lambda through another with sam local.

How it works: LambdaA is started by the `sam local start-api` command and thus sits behind the api interface that can be accessed by the `/test` route for example. LambdaA is then supposed to invoke LambdaB directly, which is already running with the command `sam local start-lambda`. To make all of this working, LambdaB has to use the docker0 ip as host ip to make it accessible from LambdaA.
