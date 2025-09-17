for f in ~/dotfiles/jumps/*
do
  if [[ -f $f ]]; then
    # echo "Loading $f"
    . $f
  # else
  #   echo "Skipping: $f"
  fi
done
