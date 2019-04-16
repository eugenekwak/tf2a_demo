# pull anaconda3 latest base image
FROM continuumio/anaconda3:latest

LABEL maintaner=@eugenek113

# set working directory in container to usr/app
WORKDIR '/usr/app'

# mkdir a place to house notebooks
RUN mkdir -p notebooks

# install tensorflow 2.0 alpha
RUN pip install tensorflow==2.0.0-alpha0 

# copy contents of app to usr/app
COPY notebooks /usr/app/notebooks

CMD ["/bin/bash"]
