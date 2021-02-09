# Mozbuild shells are invoked as login shells and therefore read from this profile
# instead of reading from the .bashrc
alias abcs_please="python -c 'import string; import re; print (re.sub(\"(.)\", r\"\1 \", string.ascii_uppercase).strip())'"
alias build="mach build"
alias build_run="mach build && mach run"
alias clobber="mach clobber"
alias clobber_build="mach clobber && mach run"
alias test_about_logins="mach test browser/components/aboutlogins"
alias test_about_logins_headless="mach test browser/components/aboutlogins --headless"
alias test_passwordmgr="mach test toolkit/components/passwordmgr"
alias test_passwordmgr_headless="mach test toolkit/components/passwordmgr --headless"
alias central="hg up central"
alias moz_directory="cd G:/mozilla/mozilla-central"
alias run="mach run"

function rebase_source_central() {
  hg rebase -s $@ -d central
}

function rebase_revisions_central() {
  for revision in "$@"
  do
    hg rebase -r $revision -d central 
  done
}
