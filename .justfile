set windows-shell := ["pwsh.exe", "-NoLogo", "-Command"]

alias cbt := configure-build-test
alias bt := build-test

default:
  @just --list

configure:
    cmake --preset dev -G Ninja

build:
    cmake --build --preset dev

test:
    ctest --preset dev

testr regex:
    ctest --preset dev -R {{regex}}

configure-build-test: configure build test
build-test: build test