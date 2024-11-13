#!/bin/bash

# stop running server
ps a | grep uvicorn | grep -v grep | awk '{print $1}' | xargs kill -9

# start server
uvicorn main:app --host=0.0.0.0
