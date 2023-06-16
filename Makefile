IMAGE_REPOSITORY  ?= 797740695898.dkr.ecr.us-east-1.amazonaws.com/wildlogstash
GIT_LAST_TAG=$(shell git tag --sort=v:refname|tail -n 1)
GIT_COMMIT=$(shell git rev-parse --short HEAD)
GIT_TAG         ?=$(or ${CI_COMMIT_TAG},$(or ${GIT_LAST_TAG}, ${GIT_COMMIT} ) )
IMAGE_TAG         ?= ${GIT_TAG}
help:
	@grep -E '^[\/a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-20s\033[0m %s\n", $$1, $$2}'	
.PHONY: docker-build
docker-build: ## Build docker image using latest as cache
	echo "building: ${IMAGE_REPOSITORY}:${IMAGE_TAG}"
	# docker pull ${IMAGE_REPOSITORY}:latest || true
	DOCKER_BUILDKIT=1 docker build --cache-from ${IMAGE_REPOSITORY}:latest -t ${IMAGE_REPOSITORY}:latest . --build-arg IMAGE_TAG=${IMAGE_TAG}
	docker tag ${IMAGE_REPOSITORY}:latest ${IMAGE_REPOSITORY}:${IMAGE_TAG}
  
.PHONY: docker-push 
docker-push: ## Push docker image to remote ${IMAGE_REPOSITORY}
	docker push ${IMAGE_REPOSITORY}:${IMAGE_TAG}
	docker push ${IMAGE_REPOSITORY}:latest

.PHONY: docker-test
docker-test: ## test file using docker image and .env variables
	docker run -it --rm -v \${CURRENT_DIR}:/workspace --env-file .env -p 5044:5044	-p 9600:9600 -p 9700:9700 ${IMAGE_REPOSITORY}:latest

.PHONY: list-plugins
list-plugins: ## test file using docker image and .env variables
	docker run --rm  ${IMAGE_REPOSITORY}:latest bin/logstash-plugin list --verbose

.PHONY: docker-test-bash
docker-test-bash: ## test the docker image but gives yuou a shell
	docker run -it --rm -v \${CURRENT_DIR}:/workspace --env-file .env	${IMAGE_REPOSITORY}:latest bash

.PHONY: printvars
printvars: ## Prints make variables
	$(foreach V, $(sort $(.VARIABLES)), \
	$(if $(filter-out environment% default automatic, $(origin $V)),$(warning $V=$($V) ($(value $V)))) \
	)