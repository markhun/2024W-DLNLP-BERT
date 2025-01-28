# DLNLP - BERT

## Setting up a local development environment

### 1. Ensure external dependencies are installed

First, make sure that you have Python 3.11 available on your system and the interpreter executable is available as `python3.11`.

### 2. Set up a Python virtual environment

Execute `make dev`. This will set up a Python virtual environment, install all the necessary dependencies into it.
Execute `source .venv/bin/activate` to enter the created virtual environment.

### 3. Format your code

Execute `make lint` to format and lint your code.

## Setting up a JupyterHub development environment

For this university project, We were provided with access to a JupyterHub instance. 
Do not use the provided instructions for setting up a `conda` environment. Instead, you need to take the following steps to execute our code there:

### 1. Clone the repository:

`git clone https://github.com/markhun/2024W-DLNLP-BERT.git`

### 2. Set up a Python virtual environment

At first, execute `make dev` to create virtual environment.
This may take a while to complete.

### 3. Register the virtual env as a kernel 

Execute `make register-venv-in-jupyterhub`.  
The registered Kernel will be called `.venv`.  
Refresh the web interface (e.g. by pressing F5 on your keyboard).

When opening a notebook, make sure to select the Python kernel `.venv`.

---

## Reproducing BERT Experiments

### GLUE

- [GLUE Task: MNLI (matched/mismatched)](./BERT-finetuning-GLUE-MNLI.ipynb)
- [GLUE Task: QQP](./BERT-finetuning-GLUE-QQP.ipynb)
- [GLUE Task: QNLI](./BERT-finetuning-GLUE-QNLI.ipynb)
- [GLUE Task: SST2](./BERT-finetuning-GLUE-SST2.ipynb)
- [GLUE Task: CoLA](./BERT-finetuning-GLUE-CoLA.ipynb)
- [GLUE Task: STS-B](./BERT-finetuning-GLUE-STSB.ipynb)
- [GLUE Task: MRPC](./BERT-finetuning-GLUE-MRPC.ipynb)
- [GLUE Task: RTE](./BERT-finetuning-GLUE-RTE.ipynb)