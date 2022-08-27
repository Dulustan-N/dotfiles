function compr
    for name in $argv
        g++ -DLOCAL -std=c++17 -O2 -Wall -Wextra -Wno-unused-result -fmax-errors=2 -fsanitize=address,undefined -o $name $name.cpp && ./$name   
    end    
end
