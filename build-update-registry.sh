# docker buildx build --platform linux/amd64,linux/arm64 -f ./Dockerfile -t avalon-wtf:latest .


aws ecr get-login-password --region us-west-2 | docker login --username AWS --password-stdin $AWS_ACCOUNT_ID.dkr.ecr.us-west-2.amazonaws.com

docker build -f ./Dockerfile -t avalon-wtf:latest .
docker tag avalon-wtf:latest $AWS_ACCOUNT_ID.dkr.ecr.us-west-2.amazonaws.com/avalon-wtf:latest
docker push $AWS_ACCOUNT_ID.dkr.ecr.us-west-2.amazonaws.com/avalon-wtf:latest