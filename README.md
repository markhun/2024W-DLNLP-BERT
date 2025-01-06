# dlnlp-BERT

## Setting up the development environment

### 1. Ensure external dependencies are installed

First make sure that you have Python 3.11 available on your system and the interpreter executable is available as `python3.11`.

### 2. Setup a Python virtual environment

Execute `make dev`. This will setup a Python virtual environment, install all the necessary dependencies into it.
Execute `source .venv/bin/activate` to enter the created virtual environment.

### 3. Install the `2024W DLNLP` package in development mode

Execute `make install`. This will install the package `2024W DLNLP` in development mode.
This package provdes all implementations to execute the provided experiments.

### 4. Format your code

Execute `make lint` to format and lint your code.

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