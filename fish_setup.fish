
function fish_setup
  if test -d "fish"
    echo "fish directory exist";
  else
    echo "fish directory do exist";
    return
  end

  echo "copy and move fish_config"
  cp fish_config.fish fish/
  mv fish/fish_config.fish fish/config.fish

  echo "copy and move fish_plugins"
  cp fish_plugins fish/

  echo "copy and move functions"
  cp fish_functions.fish fish/functions/
  
end

echo "Running fish_setup"
fish_setup
