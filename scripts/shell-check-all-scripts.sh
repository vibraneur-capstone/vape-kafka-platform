#!/bin/bash

for script in ./*.sh ; do
    echo "checking $script"
    shellcheck "$script"
done