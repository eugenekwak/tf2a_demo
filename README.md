# A demo of Tensorflow 2 - alpha

First, build the docker image using...
`docker build -t condatf2 .`

In order to fire up the container with a Jupyter notebook on port 8888, run the following...

`docker run -v $(pwd)/notebooks:/usr/app/notebooks -itp 8888:8888 condatf2 jupyter notebook --ip=0.0.0.0 --port=8888 --allow-root`

or, Jupyter Lab on port 8889 using...
`docker run -v $(pwd)/notebooks:/usr/app/notebooks -itp 8889:8889 condatf2 jupyter lab --ip=0.0.0.0 --port=8889 --allow-root`

Then, you can open Jupyter in your browser using the following...

`http://0.0.0.0:8888/?token=<insert token provided here>`

