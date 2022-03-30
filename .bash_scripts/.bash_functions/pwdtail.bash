#!/bin/bash

# Returns the last 2 fields of the working directory.
pwdtail()
{
    pwd|awk -F/ '{nlast = NF -1;print $nlast"/"$NF}'
}