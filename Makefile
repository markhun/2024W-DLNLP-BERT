VENV := .venv
REQUIREMENTS := requirements.txt

PYTHON_VERSION_REQ = python3.11  # Also name of the required python executable 
PYTHON_INSTALLED := $(shell command -v $(PYTHON_VERSION_REQ) 2> /dev/null)  # Check if executable is installed

.PHONY: dev venv requirements 
.PHONY: lint isort black
.PHONY: clean


dev: venv requirements 

	@printf "\n\nDevelopment Environment is now setup\n"
	@printf "Run 'source $(VENV)/bin/activate' to enter virtual environment\n"

venv: 
ifndef PYTHON_INSTALLED
	$(error "$(PYTHON_VERSION_REQ) is not available. Please install $(PYTHON_VERSION_REQ)")
endif
	@$(PYTHON_VERSION_REQ) -m venv $(VENV)

requirements:
	@. $(VENV)/bin/activate && \
		DISPLAY= pip install -r $(REQUIREMENTS)  # Setting DISPLAY is a hack to accomodate a bug in WSL: https://stackoverflow.com/a/69011313

register-venv-in-jupyterhub:
	@python -m ipykpython -m ipykernel install --user --name .venv
	@echo "Registered .venv with JupyterHub. Please reload the page so that you can see it" 

install:
	@. $(VENV)/bin/activate && \
		pip install -e ./DLNLP-BERT/

black:
	@. $(VENV)/bin/activate && \
		black --diff --check . 

isort:
	@. $(VENV)/bin/activate && \
		isort . --profile black

lint: isort black

clean: clean-venv

clean-venv:
	@echo "Cleaning venv"
	rm -rf $(VENV)
	@echo
	@echo "Run 'deactivate' to exit virtual environment"


