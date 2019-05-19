# A container environment for using TF2alpha GPU

First, build the docker image using...
`docker build -t tf2gpu .`

In order to fire up the container with a Jupyter notebook on port 8888, run the following...

`docker run -v $(pwd)/projects:/usr/app/projects --runtime=nvidia -itp 8888:8888 tf2gpu jupyter notebook --ip=0.0.0.0 --port=8888 --allow-root`

or, Jupyter Lab on port 8889 using...
`docker run -v $(pwd)/projects:/usr/app/projects --runtime=nvidia -itp 8889:8889 tf2gpu jupyter lab --ip=0.0.0.0 --port=8889 --allow-root`

Then, you can open Jupyter in your browser using the following...

`http://0.0.0.0:8888/?token=<insert token provided here>`

