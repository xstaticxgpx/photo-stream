#!/bin/env bash

set -ex

podman compose up --force-recreate --build --no-cache
