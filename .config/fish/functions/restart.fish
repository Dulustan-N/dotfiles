function restart --wraps='sudo reboot' --description 'alias restart=sudo reboot'
  sudo reboot $argv; 
end
