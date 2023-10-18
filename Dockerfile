FROM jupyter/scipy-notebook:python-3.11.6

USER root
RUN apt-get install g++

USER ${NB_USER}

RUN pip install -U pip
RUN pip install bambi
RUN pip install watermark python-dotenv psycopg2-binary sqlalchemy fitter easydev

#RUN conda config --set verbosity 2
#RUN conda update --yes -n base conda
# RUN conda remove theano-pymc -y
# RUN conda install -c conda-forge jupyter_contrib_nbextensions
#RUN conda install -c conda-forge jupyter_nbconvert_config jupyter_nbextensions_configurator -y
#RUN conda install --yes -c conda-forge pymc arviz
# RUN conda install --yes -c conda-forge bambi
#RUN conda install -c conda-forge numpyro blackjax nutpie -y

# check https://stackoverflow.com/questions/53250933/conda-takes-20-minutes-to-solve-environment-when-package-is-already-installed


#RUN conda install --yes -c conda-forge -c bioconda  watermark python-dotenv psycopg2 sqlalchemy fitter easydev  && \
#    conda clean --all -f -y && \
#    fix-permissions "${CONDA_DIR}" && \
#    fix-permissions "/home/${NB_USER}" \
