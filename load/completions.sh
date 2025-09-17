for f in ~/dotfiles/completions/*
do
  if [[ -f $f ]]; then
    # echo "Loading $f"
    . $f
  else
    echo "Skipping: $f"
  fi
done

# Used by `brew install bash-completion@2`
[[ -r "/opt/homebrew/etc/profile.d/bash_completion.sh" ]] && . "/opt/homebrew/etc/profile.d/bash_completion.sh"
