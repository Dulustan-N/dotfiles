function suspend --wraps='sudo pm-suspend' --description 'alias suspend=sudo pm-suspend'
  sudo pm-suspend $argv; 
end
