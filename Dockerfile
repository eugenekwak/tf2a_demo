# pull anaconda3 latest base image
FROM tensorflow/tensorflow:2.0.0a0-gpu-py3-jupyter

LABEL maintaner=@eugenek113

# set working directory in container to usr/app
WORKDIR '/usr/app'

# mkdir a place to house projects
RUN mkdir -p projects

# install additional data science packages
RUN pip install scipy
RUN pip install pandas
RUN pip install seaborn
RUN pip install dask
RUN pip install tqdm
RUN pip install -U scikit-learn
RUN pip install jupyterlab
RUN pip install xgboost

# copy contents of app to usr/app
COPY projects /usr/app/projects

CMD ["/bin/bash"]
