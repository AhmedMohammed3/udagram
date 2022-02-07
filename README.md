# Udagram
Pipeline Status (master Branch): [![CircleCI](https://circleci.com/gh/AhmedMohammed3/udagram/tree/master.svg?style=shield)](https://circleci.com/gh/AhmedMohammed3/udagram/?branch=master)

This application is a post based social media platform. It is like Instagram but for posts. It is also like Snapchat but for posts. And you can embed images and links in posts. All you need to do is to sign up then you can start sharing your thoughts in the world of Udagram via our posts. It consists of frontend and backend. Frontend is built using Angular framework and backend is build using Node.js and Express.js in typescript. It is also linked with circleci to auto deploy the application on AWS on any push. S3 is used for hosting the frontend, another S3 is used to store media files, elastic beanstalk for hosting the backend and RDS postgres DB for storing the posts and users.

## Live Preview
[![](https://github.com/AhmedMohammed3/udagram/blob/master/resources/udagram-front.PNG)](http://ahassan-udagram-frontend.s3-website-us-east-1.amazonaws.com/)<br>

## Overview

### S3 Bucket

[![](https://github.com/AhmedMohammed3/udagram/blob/master/resources/s3-running.PNG)](https://github.com/AhmedMohammed3/udagram/blob/master/resources/s3-running.PNG)<br>

### Elastic Beanstalk

[![](https://github.com/AhmedMohammed3/udagram/blob/master/resources/eb-running.PNG)](https://github.com/AhmedMohammed3/udagram/blob/master/resources/eb-running.PNG)<br>

### RDS

[![](https://github.com/AhmedMohammed3/udagram/blob/master/resources/rds-running.PNG)](https://github.com/AhmedMohammed3/udagram/blob/master/resources/rds-running.PNG)<br>

### Last success circleci build

[![](https://github.com/AhmedMohammed3/udagram/blob/master/resources/circleci-pipeline.PNG)](https://github.com/AhmedMohammed3/udagram/blob/master/resources/circleci-pipeline.PNG)<br>

### Environment Variables of CircleCi

[![](https://github.com/AhmedMohammed3/udagram/blob/master/resources/circleci-envars.PNG)](https://github.com/AhmedMohammed3/udagram/blob/master/resources/circleci-envars.PNG)<br>

### Infrastructure
1. S3 Bucket that hosts the frontend which is built using Angular framework.
2. S3 Bucket that hosts the media files.
3. Elastic Beanstalk that hosts the backend which is built using Node.js and Express.js in typescript.
4. RDS that hosts the postgres DB which is built using postgres.
[![](https://github.com/AhmedMohammed3/udagram/blob/master/resources/infrastructure.png)](https://github.com/AhmedMohammed3/udagram/blob/master/resources/infrastructure.png)<br>
### Pipeline Overview
After the developer pushes the code to the repository, the pipeline starts.
1. CircleCi is triggered to start the build.
2. Checkout the code from the repository.
3. Install AWS & Elastic Beanstalk CLI.
4. Configure AWS Credentials.
5. Install frontend dependencies.
6. Install backend dependencies.
5. Build frontend.
6. Build backend.
7. Run frontend tests.
8. Deploy frontend to S3.
9. Deploy backend to Elastic Beanstalk.
[![](https://github.com/AhmedMohammed3/udagram/blob/master/resources/aws-pipeline.png)](https://github.com/AhmedMohammed3/udagram/blob/master/resources/aws-pipeline.png)<br>
## Required Tools

```
- Node v14.15.1 (LTS) or more recent. It is always advisable to keep node to latest LTS version.

- npm 6.14.8 (LTS) or more recent, Yarn can also work.

- AWS CLI v2, v1 can work but was not tested for this project.

- Elastic Beanstalk CLI.

- A RDS database running Postgres.

- An S3 bucket.

- An Elastic Beanstalk environment.

- A CircleCI project.

```

## Installations

### Install AWS CLI

You can follow this tutorial to install AWS CLI.
[https://docs.aws.amazon.com/cli/latest/userguide/getting-started-install.html](https://docs.aws.amazon.com/cli/latest/userguide/cli-chap-install.html)<br>
### Install Elastic Beanstalk CLI

You can follow this tutorial to install Elastic Beanstalk CLI.(Read README.md file)
[https://github.com/aws/aws-elastic-beanstalk-cli-setup](https://github.com/aws/aws-elastic-beanstalk-cli-setup)<br>
### Create a new Elastic Beanstalk Application

You can follow this tutorial to create a new Elastic Beanstalk Application.
[https://docs.aws.amazon.com/elasticbeanstalk/latest/dg/GettingStarted.CreateApp.html](https://docs.aws.amazon.com/elasticbeanstalk/latest/dg/GettingStarted.CreateApp.html)<br>
### Create a RDS postgres Database

1. Navigate to RDS dashboard.
[![](https://github.com/AhmedMohammed3/udagram/blob/master/resources/rds-1.png)](https://github.com/AhmedMohammed3/udagram/blob/master/resources/rds-1.png)<br>
2. Click on the Create New Database button.
[![](https://github.com/AhmedMohammed3/udagram/blob/master/resources/rds-2.png)](https://github.com/AhmedMohammed3/udagram/blob/master/resources/rds-2.png)<br>
3. Choose Standard Create, PostgreSQL V12.8-R1.
[![](https://github.com/AhmedMohammed3/udagram/blob/master/resources/rds-3.png)](https://github.com/AhmedMohammed3/udagram/blob/master/resources/rds-3.png)<br>
4. Choose free tier and type your instance name and user and password
[![](https://github.com/AhmedMohammed3/udagram/blob/master/resources/rds-4.png)](https://github.com/AhmedMohammed3/udagram/blob/master/resources/rds-4.png)<br>
5. Make sure you are using Burstable classes of db.t2.micro and disable storage autoscaling if enabled.
[![](https://github.com/AhmedMohammed3/udagram/blob/master/resources/rds-5.png)](https://github.com/AhmedMohammed3/udagram/blob/master/resources/rds-5.png)<br>
6. Make sure to check Public access yes.
[![](https://github.com/AhmedMohammed3/udagram/blob/master/resources/rds-6.png)](https://github.com/AhmedMohammed3/udagram/blob/master/resources/rds-6.png)<br>
7. In Additinoal configuration, type your database name which you will use in application.
[![](https://github.com/AhmedMohammed3/udagram/blob/master/resources/rds-7.png)](https://github.com/AhmedMohammed3/udagram/blob/master/resources/rds-7.png)<br>
8. Click on the Create database button.
[![](https://github.com/AhmedMohammed3/udagram/blob/master/resources/rds-8.png)](https://github.com/AhmedMohammed3/udagram/blob/master/resources/rds-8.png)<br>
9. After Creating the database, we need to whitelist any inbound IP address to access the database.
    1. Choose your RDS database from the list of instances.
    [![](https://github.com/AhmedMohammed3/udagram/blob/master/resources/rds-9.png)](https://github.com/AhmedMohammed3/udagram/blob/master/resources/rds-9.png)<br>
    2. Scroll to and click on Connectivity & Security tab and click search for vpn security group and click on it.
    [![](https://github.com/AhmedMohammed3/udagram/blob/master/resources/rds-10.png)](https://github.com/AhmedMohammed3/udagram/blob/master/resources/rds-10.png)<br>
    3. Make sure the security group that belong to your DB is selected and click on Inbound Rules then click edit Inbound Rules
    [![](https://github.com/AhmedMohammed3/udagram/blob/master/resources/rds-11.png)](https://github.com/AhmedMohammed3/udagram/blob/master/resources/rds-11.png)<br>
    4. Click on the Add Rule button choose type All Traffic, Secure custom and type 0.0.0.0/0 then click save rules.
    [![](https://github.com/AhmedMohammed3/udagram/blob/master/resources/rds-12.png)](https://github.com/AhmedMohammed3/udagram/blob/master/resources/rds-12.png)<br>
10. Now you can access your database by using the endpoint that in Connectivity & security tab which are inside the created RDS.

### Create a S3 Bucket

1. Open cmd and type "aws s3api create-bucket --bucket <your-bucket-name> --region <your-region>".
2. Now after creating the bucket, go to your bucket permissions tab then to Block public access and uncheck the checkbox.
[![](https://github.com/AhmedMohammed3/udagram/blob/master/resources/s3-1.png)](https://github.com/AhmedMohammed3/udagram/blob/master/resources/s3-1.png)
3. Next step is to create a policy for your bucket. permissions tab search for bucket policy and click edit.
[![](https://github.com/AhmedMohammed3/udagram/blob/master/resources/s3-2.png)](https://github.com/AhmedMohammed3/udagram/blob/master/resources/s3-2.png)
4. Put the following text into Policy replacing (your-bucket-name) with your bucket name:
`{ "Version": "2012-10-17", "Statement": [ { "Sid": "PublicReadGetObject", "Effect": "Allow", "Principal": "*", "Action": [ "s3:GetObject" ], "Resource": [ "arn:aws:s3:::(your-bucket-name)/*" ] } ] }`
[![](https://github.com/AhmedMohammed3/udagram/blob/master/resources/s3-3.png)](https://github.com/AhmedMohammed3/udagram/blob/master/resources/s3-3.png)
5. Now this is the time for configuring the static website hosting, go to properties tab.
[![](https://github.com/AhmedMohammed3/udagram/blob/master/resources/s3-4.png)](https://github.com/AhmedMohammed3/udagram/blob/master/resources/s3-4.png)
6. Search for static website hosting and click edit.
[![](https://github.com/AhmedMohammed3/udagram/blob/master/resources/s3-5.png)](https://github.com/AhmedMohammed3/udagram/blob/master/resources/s3-5.png)
7. Enable it and choose host a static website then type index.html in index document and click save.
[![](https://github.com/AhmedMohammed3/udagram/blob/master/resources/s3-6.png)](https://github.com/AhmedMohammed3/udagram/blob/master/resources/s3-6.png)
8. You can upload files to your bucket by using the following command:
`aws s3 cp --recursive --acl public-read <local-file-path> s3://<your-bucket-name>`
[![](
9- Now you can access the website by clicking in the link that appears in Properties/static web hosting.
[![](https://github.com/AhmedMohammed3/udagram/blob/master/resources/s3-7.png)](https://github.com/AhmedMohammed3/udagram/blob/master/resources/s3-7.png)

## Getting Started In your local machine

1. Clone this repo locally into the location of your choice by running the following command: `git clone https://github.com/AhmedMohammed3/udagram.git`
2. Move into udagram/udagram-api folder and run the following command: `npm install`
3. Create .env file in udagram/udagram-api folder and add the following lines:
   1. `POSTGRES_USERNAME=<your_db_user>`
   2. `POSTGRES_PASSWORD=<your_db_password>`
   3. `POSTGRES_DB=<your_db_name>`
   4. `POSTGRES_HOST=<your_db_host>`
   5. `DB_PORT=<your_db_port>`
   6. `PORT=<your_preferred_server_port>`
   7. `JWT_SECRET=<your_jwt_secret>`
   8. `AWS_BUCKET=<your_aws_bucket_name>`
   9. `aws_region=<your_aws_region>`
4. Run the following command to start the server: `npm start`
5. Move into udagram/udagram-frontend folder and run the following command: `npm install`
6. Go to src/environments/environment.prod.ts and change the url to your bucket url.
7. Go to src/environments/environment.ts and change the url to your local server url.
8. Run the following command to start the application: `npm start`

## Testing

This project contains two different test suite: unit tests and End-To-End tests(e2e). Follow these steps to run the tests.

1. `cd starter/udagram-frontend`
1. `npm run test`
1. `npm run e2e`

There are no Unit test on the back-end

### Unit Tests:

Unit tests are using the Jasmine Framework.

### End to End Tests:

The e2e tests are using Protractor and Jasmine.

## Built With

- [Angular](https://angular.io/) - Single Page Application Framework
- [Node](https://nodejs.org) - Javascript Runtime
- [Express](https://expressjs.com/) - Javascript API Framework
