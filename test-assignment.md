Understand the code structure & build the project environment

 Understand code structure
 Set up the environment (Docker, virtualenv, etc.)
 Run and debug the app locally
 Dockerize the Project
 Create a `Dockerfile` and (optionally) a `docker-compose.yml` to run the
app.
 Candidate should ensure it builds cleanly and exposes the correct ports.
 Logging & Monitoring Setup
 Add basic logging setup (e.g., integrate with a log forwarder like Fluentd or a simple file-based logger).
 Set up Prometheus exporter endpoint or basic metrics script. 

3. created docker-compose.yml with all the services including monitoring and logging.


 Infrastructure as Code (IaC)
 Ask for a simple Terraform script to provision an EC2 instance (or similar
cloud setup).
 Evaluate understanding of cloud provisioning—even if mocked.

4. Created a terraform module to create EC2 instance on AWS with docker install.

```
terraform init
terraform plan
terraform apply
```

AWS CLI Task

Provide credentials (or mock values) and ask them to:

1. First of all configure aws 

command: aws configure

 Upload a file to S3

Now create a bucket and then upload file 
command: 
`
aws s3 mb s3://test-bucket-royal-city  --region us-east-1
make_bucket: test-bucket-royal-city

`

so lets say push this assignment

- aws s3 cp test-assignment.md  s3://test-bucket-royal-city
upload: ./test-assignment.md to s3://test-bucket-royal-city/test-assignment.md

 Launch a Lambda function

1. create a role 

aws iam create-role --role-name lambda-execution-role --assume-role-policy-document file://trust-policy.json

`
{
    "Role": {
        "Path": "/",
        "RoleName": "lambda-execution-role",
        "RoleId": "AROAYJO4T7BPPX2YDEUDC",
        "Arn": "arn:aws:iam::<account-id>:role/lambda-execution-role",
        "CreateDate": "",
        "AssumeRolePolicyDocument": {
            "Version": "2012-10-17",
            "Statement": [
                {
                    "Effect": "Allow",
                    "Principal": {
                        "Service": "lambda.amazonaws.com"
                    },
                    "Action": "sts:AssumeRole"
                }
            ]
        }
    }
}
`

2. create a policy

aws iam attach-role-policy   --role-name lambda-execution-role --policy-arn arn:aws:iam::aws:policy/service-role/AWSLambdaBasicExecutionRole

3. create a lambda function 

aws lambda create-function \
  --function-name hello-world \
  --runtime python3.9 \
  --role arn:aws:iam::<AccountId>:role/lambda-execution-role \
  --handler lambda_function.lambda_handler \
  --zip-file fileb://function.zip

4. invoke the function 

aws lambda invoke --function-name hello-world response.json

{
    "StatusCode": 200,
    "ExecutedVersion": "$LATEST"
}

cat response.json

"Hello again from Lambda!"%


 Or describe EC2 instances 

command:  aws ec2 describe-instances  --instance-ids i-0c52d30403f5709f4

And now get the result
