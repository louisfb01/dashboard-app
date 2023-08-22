
docker build \
    --build-arg BUILD_ENV=dev \
    -t coda-hub-dashboard:dev .

docker tag coda-hub-dashboard:dev coda19/coda-hub-dashboard:dev
docker push coda19/coda-hub-dashboard:dev
echo "Finished running script sleeping 30s"
sleep 30