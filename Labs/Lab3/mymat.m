% Bradley Grose  Section 4
% 9/8/2021
% Create 11n Matrix of given size

function v = mymat(n)
    v = zeros(n); %Makes Matrix of all zero
    for i = 1:n-1
        v(i+1, i) = 11*i; %puts 11n in 1 below the diagonal
    end
end