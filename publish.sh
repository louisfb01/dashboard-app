
docker build \
    --build-arg BUILD_ENV=prod \
    -t coda-hub-dashboard:latest .

docker tag coda-hub-dashboard:latest coda19/coda-hub-dashboard:latest
docker push coda19/coda-hub-dashboard:latest
echo "Finished running script sleeping 30s"
sleep 30