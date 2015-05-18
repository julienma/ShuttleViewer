#!/bin/bash
# Output total size of the upload folder as a JS variable, so it can be displayed in the HTML

# Usage instruction
# 1. "chmod +x foldersize.sh"
# 2. "chmod a+rw foldersize.js"
# 3. "crontab -e"
# 4. Add the following in crontab: "*/10 * * * * /home/jail/home/paul/www/theme/bin/foldersize.sh"

absolutescriptpath=$(dirname $(readlink -f $0))

file="$absolutescriptpath/foldersize.js"
folder="$absolutescriptpath/../.."

(echo -n "var foldersize='"; du -sh $folder | cut -f 1; echo -n "';") | tr -d '\n' > $file
