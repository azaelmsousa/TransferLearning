docker run -it -p 6006:6006 --volume=$(pwd)/logs/:/logs --rm  --name=tensorboard -it tensorflow/tensorflow:latest  tensorboard --logdir=/logs --port=6006