# Cleans up old Image
docker image rm dev-env:1.0

# Removes old Container
docker rm -f dev-env

# Builds Image
docker build -t dev-env:1.0 .

# Runs image and opens session as host
docker run --name dev-env -e --expose 3000 -p 3000:3000 -v //c/Users/james/Desktop/dev-env:/root/dev-env -t -i dev-env:1.0