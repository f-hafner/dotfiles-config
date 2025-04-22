
function cdactivate() {
  if [ "$#" -lt 2 ]; then
    echo "Usage: cdactivate <directory> <type> <conda_environment>"
    echo "  type: 'conda' for Conda environment, or 'venv' for activating venv with workon_venv"
    return 1
  fi
  
  if [ ! -d "$1" ]; then
    echo "Error: Directory '$1' does not exist."
    return 1
  fi
  
  cd "$1" || return 1

  case "$2" in
    conda)
      conda activate "$3"
      ;;
    venv)
      workon_venv
      ;;
    *)
      echo "Error: Invalid type. Use 'conda' or 'custom'."
      return 1
  esac
}
