function compf
    for name in $argv
        g++ -DLOCAL -std=c++17 -O2 -Wall -Wextra -Wno-unused-result -fmax-errors=2 $name $name.cpp   
    end    
end
