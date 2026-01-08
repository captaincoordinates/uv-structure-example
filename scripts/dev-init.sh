#!/bin/bash -e

pushd $(dirname $0)/..

uv sync

uv pip install pre-commit
