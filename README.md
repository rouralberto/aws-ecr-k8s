# aws-ecr-k8s

This Docker/OCI Image is made to keep fresh AWS ECR credentials in any given k8s cluster.

## Environment Variables
You'll need to feed the following ones:
- `AWS_DEFAULT_REGION`
- `AWS_ACCESS_KEY_ID`
- `AWS_SECRET_ACCESS_KEY`

## CronJob
A good idea would be to run this as a `CronJob` with a Service Account that can edit and delete secrets, as the resulting container will connect to the Kubernetes API and update the Docker Registry private credentials by using a secret called `aws-registry`.

## Debugging
The console output is very verbose, so just open the logs from the pod and check how everything is going.
