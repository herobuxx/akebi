#!/bin/bash

echo $(git rev-parse --verify HEAD) > commit-head
