# Local Lambda to Lambda Invocation

This repository is a sample for invoking one lambda through another with sam local.

How it works: LambdaA is started by the `sam local start-api` command and thus sits behind the api interface that can be accessed by the `/test` route for example. LambdaA is then supposed to invoke LambdaB directly, which is already running with the command `sam local start-lambda`. To make all of this working, LambdaB has to use the docker0 ip as host ip to make it accessible from LambdaA.

## Try it out yourself
1. You need to have [VirutalBox](https://www.virtualbox.org/wiki/Downloads) and [Vagrant](https://www.vagrantup.com/downloads) installed
2. Run `vagrant up`
3. Ssh into the new vm with `vagrant ssh`
4. Start the two lambdas concurrently with just `start-lambdas`
5. Open a second shell, ssh into the vm and execute `curl http://127.0.0.1:3000/test`
6. You should see that LambdaB gets invoked without any errors and the output should appear in the logs
