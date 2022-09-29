
docker build \
    --build-arg BUILD_ENV=prod \
    --build-arg PERSONAL_ACCESS_TOKEN=$1 \
    -t coda-hub-dashboard:latest .

docker tag coda-hub-dashboard:latest coda/coda-hub-dashboard:latest
docker push coda/coda-hub-dashboard:latest
echo "Finished running script sleeping 30s"
sleep 30