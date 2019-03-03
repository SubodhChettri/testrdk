.PHONEY: help set-env init update plan plan-destroy show graph apply output taint

help:
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'

stopc: ## Stops running Container
	-docker stop cac-py3

image: ## Runs a plan to show proposed changes.
	@docker build -t rdk-config-py3 . -f Dockerfile

clean: ## Delete Image
	-docker rmi rdk-config-py3 

devenv: ## Creates dev env Image with bash console
	@docker run -it --rm --name cac-py3 -v d:/sandbox/Learn/aws-config:/root rdk-config-py3 bash
