ng build --prod
aws s3 cp --recursive --acl public-read ./www s3://ahassan-udagram-frontend