function [error, xq] = uniform_quantizer_v1(x, L, mp, type)

N = length(x);
xq = zeros(1,N);
delta = abs(2*mp)/L;

if type == 1                                 %midtread
    dec_lev = -delta/2 + delta * (ceil(-(L+1)/2+1):ceil((L+1)/2));
    rep_val = delta * (floor(-L/2+1):floor(L/2));
   
elseif type == 2                              %midrise
    dec_lev =  delta * (floor(-(L+1)/2+1):floor((L+1)/2));
    rep_val = -delta/2 + delta * (ceil(-L/2+1):ceil(L/2));
end

% Uniform quantizer operation:
for k = 1:N
     for level = 1:L
          if ((single(x(k)) >= single(dec_lev(level))) && (single(x(k)) < single(dec_lev(level+1))))
             xq(k) = rep_val(level);
          elseif single(x(k)) > single(dec_lev(L))
              xq(k) = rep_val(L);
          elseif single(x(k)) < single(dec_lev(1))
              xq(k) = rep_val(1);
          end
      end
end
error = immse(x, xq);   %mean square quantization error
end
