function out = bell(n)
%BELL Create a Bell triangle.
%   Creates an N x N matrix that makes
%   up the numbers of a Bell triangle.
%   The unused scalars are zeroes.

if n <= 0 || floor(n)~=n
    out = [];
    return;
end
out = zeros(n);
out(1,1) = 1;

if n >=2
    out(2,1) = 1;
    x = 1;
    y = 1;
    while out(1,n) == 0
        if (n >= (y+1)) && (n >= (x+1)) && (out(x+1,y) ~= 0)
            out(x,y+1) = out(x,y) + out(x+1,y);
        end
        if  (x == 1) && (x+y+1 <=n)
            out(x+y+1,1) = out(x,y+1);
        end
        if (x-1 >0)
            x=x-1;
            y=y+1;
        else
            x=x+y;
            y=1;
        end
    end
end


        