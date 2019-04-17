# A demo of Tensorflow 2 - alpha

First, build the docker image using...
`docker build -t condatf2 .`

In order to fire up the container with a Jupyter notebook, run the following...

`docker run -v $(pwd)/notebooks:/usr/app/notebooks -itp 8888:8888 condatf2 jupyter notebook --ip=0.0.0.0 --port=8888 --allow-root`

Then, you can open Jupyter in your browser using the following...

`https://0.0.0.0:8888/?token=<insert token provided here>`

