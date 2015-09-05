function p = prime_pairs(n)
%PRIME_PAIRS Finds the lowest prime number
%   that is also a prime number when "n" is 
%   added
X = primes(99999)+n;
p = min(X(isprime(X)))-n;
if isempty(p)
    p = -1;
    return;
end