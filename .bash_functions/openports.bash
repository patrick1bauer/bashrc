#!/bin/bash

# Show open ports.
openports()
{
    netstat -nape --inet
}