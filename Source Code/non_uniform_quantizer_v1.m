function [error, xu] = non_uniform_quantizer_v1(x, mu, mp, L)

if mu~=0  
    mhat=(x + mp)/ (2 * mp);
    Y=( log(1+ mu * mhat) ) / ( log(1 + mu));
    [error, xu] = uniform_quantizer_v1(Y, L, 1, 1);
    error = immse(Y, xu);   %mean square quantization error

else
    [error, xu] = uniform_quantizer_v1(x, L, mp, 1);
    error = immse(x, xu);   %mean square quantization error
end
end
