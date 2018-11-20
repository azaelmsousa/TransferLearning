docker run --runtime=nvidia --rm -p 8888:8889 -e JUPYTER_ENABLE_LAB=yes -v "$PWD":/work -w /work tensorflow/tensorflow:latest-gpu-py3
