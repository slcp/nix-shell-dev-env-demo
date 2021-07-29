# Nix shell dev environment demo

## What is this repo?
This repository is a basic demo of an isolated development environment using nix. I think of it is a kin using a containerised environment, using VSCode as this demo does it could be considered as an alternative to VSCode Dev Containers.

This demo packages Python 3.9 and VSCode into an isolated nix-shell.

## Using this demo
  - Ensure you have nix installed
  - Run `nix-shell` from the root of the project
  - Run `code .`
    - VSCode (isolated from your global/user install) will open with the specified extensions
    - Python 3.9 will be available
        - You could also use pythonWithPackages to have nix orchestrate a `pyenv` like environment

## What next?
For me I will be further exploring the use of nix in general and for isolated dev environments. Using this kind of setup with python projects will be an interesting experiment because the use of `pyenv`, `venv`, `poetry` etc I find a bit jarring.