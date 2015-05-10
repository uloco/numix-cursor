#!/bin/bash

#quickie script to replace one color with another in theme files
#will run recursive, so run from root folder.


find . -type f -exec sed -i 's/#1793D0/#1793D1/g' {} +

