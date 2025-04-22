
# created with Phind
workon_venv() {
  for dir in .venv venv .env
  do
      if [ -e "$dir/bin/activate" ]; then
          source "$dir/bin/activate"
          return 0
      fi
  done
  echo "No Python virtual environment found in .venv, venv, or .env."
  return 1
}

add-identity () {
# do this once per session
   eval `ssh-agent -s`
   ssh-add
}
