# My generic git bash is NOT invoked as an interactive non-login shell, therefore it sources .bashrc
# and not .bash_profile
alias python='winpty python.exe'
alias abcs_please="python -c 'import string; import re; print (re.sub(\"(.)\", r\"\1 \", string.ascii_uppercase).strip())'"
