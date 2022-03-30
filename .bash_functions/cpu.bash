#!/bin/bash

# Show CPU usage
cpu()
{
    grep 'cpu ' /proc/stat | awk '{usage=(\$2+\$4)*100/(\$2+\$4_\$5)} END {print usage}' | awk '{printf(\"%.2f\n\", \$1)}'
}