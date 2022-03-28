
COMMIT_ID=$(git rev-parse --short HEAD)
echo "Building image and updating docker-hub with new tags listed below"
echo "\t chaz003/py_runner:latest"
echo "\t chaz003/py_runner:$COMMIT_ID"



echo
echo "Enter version number here if you also want a version number tag"
read versionNum



docker build . -t py_runner --no-cache

docker image tag py_runner chaz003/py_runner:latest
docker image tag py_runner chaz003/py_runner:$COMMIT_ID

if [ "$versionNum" != "" ]; then
    docker image tag py_runner chaz003/py_runner:$versionNum
fi

docker image push --all-tags chaz003/py_runner