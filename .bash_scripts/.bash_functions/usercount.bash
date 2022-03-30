#!/bin/bash

# Show the number of unique users on the same machine
usercount ()
{
    who | cut -d " " -f 1 | sort -u | wc -l
}