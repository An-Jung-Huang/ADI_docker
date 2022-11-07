#!/bin/bash
gpu_id=5
readonly sn=$(echo $RANDOM)
container_name="container_${USER}_pytorch"
image="nvcr.io/nvidia/pytorch:22.05-py3"

docker run --rm -it --name $container_name \
  --gpus device=${gpu_id} \
  --shm-size=64g \
  -v $HOME:/root \
  $image \
  bash


#  -p "22222:22" \
