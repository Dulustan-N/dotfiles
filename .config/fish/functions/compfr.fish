function compfr
    for name in $argv
        g++ -DLOCAL -std=c++17 -O2 -Wall -Wextra -Wno-unused-result -fmax-errors=2 -o $name $name.cpp && ./$name   
    end    
end
