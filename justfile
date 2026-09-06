set windows-shell := ["powershell.exe", "-NoLogo", "-NoProfile", "-Command"]

default:
    @just --list

setup:
    lefthook install

lint:
    actionlint

spell:
    typos

check: lint spell

ci: check
