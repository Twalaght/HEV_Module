#!/bin/bash

for var in "$@"
do
	play -q "sound/$var.wav"
done