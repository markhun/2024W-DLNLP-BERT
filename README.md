# dlnlp-BERT-BERT

## Setting up the development environment

### 1. Ensure external dependencies are installed

First make sure that you have Python 3.10 available on your system and the interpreter executable is available as `python3.10`.

### 2. Setup a Python virtual environment

Execute `make dev`. This will setup a Python virtual environment, install all the necessary dependencies into it.
Execute `source .venv/bin/activate` to enter the created virtual environment.

### 3. Install the `2024W DLNLP` package in development mode

Execute `make install`. This will install the package `2024W DLNLP` in development mode.
This package provdes all implementations to execute the provided experiments.

### 4. Format your code

Execute `make lint` to format and lint your code.