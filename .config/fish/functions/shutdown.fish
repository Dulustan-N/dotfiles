function shutdown --wraps='sudo shutdown now' --description 'alias shutdown=sudo shutdown now'
  sudo shutdown now $argv; 
end
