docker build -t $JOB_NAME:$BUILD_ID .

docker tag $JOB_NAME:$BUILD_ID talentj/$JOB_NAME:$BUILD_ID

docker tag $JOB_NAME:$BUILD_ID talentj/$JOB_NAME:latest

docker push talentj/$JOB_NAME:$BUILD_ID

docker push talentj/$JOB_NAME:latest

docker rmi -f $JOB_NAME:$BUILD_ID talentj/$JOB_NAME:$BUILD_ID talentj/$JOB_NAME:latest
