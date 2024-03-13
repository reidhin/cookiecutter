{{cookiecutter.project_name}}
==============================

{{cookiecutter.description}}

## 1. Setup

### 1.1 Setting up your Python environment
 
The steps below describe how to set up your environment for {{cookiecutter.project_name}} experiment.
For this we assume you have a terminal open and have it pointed at the root of this project.

1. Install the conda environment: `conda env create -f environment.yml`
2. Activate the environment: `conda activate {{cookiecutter.repo_name}}`
3. Install the source code as a Python module: `pip install -e .`
4. Optional: install Plotly widgets for Jupyter: `jupyter labextension install jupyterlab-plotly@4.9.0`  
Note that for this step you need node installed, either on your system itself, or through conda. 
   
### 1.2 Setting up your IDE
This part is set up under the assumption that PyCharm will be used.
1. Set up the interpreter (`{{cookiecutter.repo_name}}`) when opening this project in PyCharm. 
2. Set up Black. Black is a code formatter with quite strict opinions. While not all the choices it
 makes are optimal, it does make sure that the code everyone commits is exactly the same.
 [This](https://black.readthedocs.io/en/stable/editor_integration.html#pycharm-intellij-idea) shows
 how to set up Black in PyCharm. 
 Though there are three additional notes:
   1. The most important part of that setup is having it run on every save using the file watcher
   plugin.
   2. I'd suggest installing Black in a more global environment rather than `{{cookiecutter.repo_name}}`. Reason for this
   is that the Black file watcher setup can be shared over all projects, and it's better not to
   have it linked to a specific environment then.
   3. We set the line length to 99 characters. So make sure that the argument is `-l 99 $FilePath$`
   instead of just `$FilePath$`.
3. Add a line length indicator to PyCharm to match the line length used by Black. This can be
configured at `Settings -> Editor -> Code Style -> Hard wrap at` and should be set to 99. This is
useful for things like comments and documentation, because Black doesn't change comments.

While the above steps use PyCharm as IDE, all these things can also be configured in other
IDEs/editors like Visual Studio Code. 

## 2. Using this repository

Descripe how to use `{{cookiecutter.repo_name}}` and where to start.

Project Organization
------------

    ├── LICENSE
    ├── README.md          <- The top-level README for developers using this project.
    ├── data
    │   ├── external       <- Data from third party sources.
    │   ├── interim        <- Intermediate data that has been transformed.
    │   ├── processed      <- The final, canonical data sets for modeling.
    │   └── raw            <- The original, immutable data dump.
    │
    ├── models             <- Trained and serialized models, model predictions, or model summaries
    │
    ├── notebooks          <- Jupyter notebooks. Naming convention is a number (for ordering),
    │                         the creator's initials, and a short `-` delimited description, e.g.
    │                         `1.0-jqp-initial-data-exploration`.
    │
    ├── reports            <- Generated analysis as HTML, PDF, LaTeX, etc.
    │   └── figures        <- Generated graphics and figures to be used in reporting
    │
    │
    ├── setup.py           <- makes project pip installable (pip install -e .) so src can be imported
    └── src                <- Source code for use in this project.
        ├── __init__.py    <- Makes src a Python module
        │
        ├── data           <- Scripts to download or generate data
        │   └── make_dataset.py
        │
        ├── features       <- Scripts to turn raw data into features for modeling
        │   └── build_features.py
        │
        ├── models         <- Scripts to train models and then use trained models to make
        │   │                 predictions
        │   ├── predict_model.py
        │   └── train_model.py
        │
        └── visualization  <- Scripts to create exploratory and results oriented visualizations
            └── visualize.py


--------

<p><small>Project based on the <a target="_blank" href="https://github.com/reidhin/cookiecutter/tree/main/Python_data_science">cookiecutter custom data science template</a>, inspired by the <a target="_blank" href="https://drivendata.github.io/cookiecutter-data-science/">cookiecutter data science project template</a>. #cookiecutterdatascience</small></p>
