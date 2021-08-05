#!/bin/bash
find_hidden () {
find /opt -name ".prune-enable"
return 0
}
find_hidden
echo The previous function has a return value of $?

 delete_hidden () {
 find /opt -name ".crash.dump" -type f -exec rm -f {} \; -print
 return 0
 }
 delete_hidden
 echo The previous function has a return value of $?

 find_log () {
 filepath=/opt
 var1="$(basename $(find "$filepath" -size +1M -type f \( -iname "*.log"  \) | awk '{print $NF}'))"
 echo "$filepath/$var1"
 tail -n 20000 "$filepath/$var1" >> "$filepath"/newfile
 return 0
 }
 find_log
