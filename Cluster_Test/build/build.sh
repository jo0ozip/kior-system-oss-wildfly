eval $(minikube docker-env)
#DOCKER_BUILDKIT=0 docker build --platform linux/amd64 --no-cache --force-rm -t kior-system-oss-wildfly:v34.0.0.1 -f ./DockerFile.wildfly ../.
DOCKER_BUILDKIT=0 docker build --no-cache --force-rm -t kior-system-oss-wildfly:v34.0.0.1 -f ./DockerFile.wildfly ../.
