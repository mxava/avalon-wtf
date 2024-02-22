### multiarch builds not supported with current setup :(
### but i would probably try something like this:
# docker buildx build --platform linux/amd64,linux/arm64 -f ./Dockerfile -t avalon-wtf:latest .


aws ecr get-login-password --region $AWS_REGION | docker login --username AWS --password-stdin $AWS_ACCOUNT_ID.dkr.ecr.$AWS_REGION.amazonaws.com

docker build -f ./Dockerfile -t avalon-wtf:latest .
docker tag avalon-wtf:latest $AWS_ACCOUNT_ID.dkr.ecr.$AWS_REGION.amazonaws.com/avalon-wtf:latest
docker push $AWS_ACCOUNT_ID.dkr.ecr.$AWS_REGION.amazonaws.com/avalon-wtf:latest