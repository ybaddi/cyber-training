#!/bin/bash

shuf -n 1 -e $(seq $1 $2)
