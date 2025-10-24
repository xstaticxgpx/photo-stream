#!/bin/env bash

podman compose up --force-recreate --build --no-cache

podman image tag localhost/photo-stream_photo-stream us-central1-docker.pkg.dev/nix-llc/photo-stream/photo-stream:latest
podman image push  us-central1-docker.pkg.dev/nix-llc/photo-stream/photo-stream:latest
gcloud run services update photo-stream --image us-central1-docker.pkg.dev/nix-llc/photo-stream/photo-stream:latest
