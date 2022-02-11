## PipeLine Process

### Last success circleci build

[![](https://github.com/AhmedMohammed3/udagram/blob/master/resources/circleci-pipeline.PNG)](https://github.com/AhmedMohammed3/udagram/blob/master/resources/circleci-pipeline.PNG)<br>

### Environment Variables of CircleCi

[![](https://github.com/AhmedMohammed3/udagram/blob/master/resources/circleci-envars.PNG)](https://github.com/AhmedMohammed3/udagram/blob/master/resources/circleci-envars.PNG)<br>

### Pipeline Overview

After the developer pushes the code to the master branch, the pipeline starts.

1. CircleCi is triggered to start the build.
2. Checkout the code from the repository.
3. Install AWS & Elastic Beanstalk CLI.
4. Configure AWS Credentials.
5. Install frontend dependencies.
6. Install backend dependencies.
7. Build frontend.
8. Build backend.
9. Run frontend tests.
10. Deploy frontend to S3.
11. Deploy backend to Elastic Beanstalk.
    [![](https://github.com/AhmedMohammed3/udagram/blob/master/resources/aws-pipeline.png)](https://github.com/AhmedMohammed3/udagram/blob/master/resources/aws-pipeline.png)<br>
