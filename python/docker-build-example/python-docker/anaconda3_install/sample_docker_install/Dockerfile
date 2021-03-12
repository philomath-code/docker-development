FROM continuumio/anaconda3

RUN /opt/conda/bin/conda install python=3.8 && \
    /opt/conda/bin/conda install jupyter -y

RUN ["mkdir", "notebooks"]


# Jupyter
EXPOSE 8888

# Store notebooks in this mounted directory
VOLUME /notebooks
