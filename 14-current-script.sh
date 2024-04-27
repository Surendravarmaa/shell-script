#!/bim/bash

COURSE="Devops from current script"

echo "Before calling the other script, course: $COURSE"
echo "Process ID of current shell script: $$"

./15-other-script.sh

echo "After calling the other script, course: $COURSE"

