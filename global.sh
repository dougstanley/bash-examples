#!/bin/sh

echo "Begin script"
env | grep FOO

FOO="abc"

echo "After FOO set"
env | grep FOO

echo $FOO

export FOO

echo "After export"
env | grep FOO
