% Bradley Grose Section 4
% 10/20/2021
% Uses Gram-Schmidt process to return a matrix of the 
% resulting form

function Q = grams(A)
    [~, n] = size(A);
    Q = A;
    for i = 2:n
        Q(:,i) = A(:,i);
        for j = 1:i-1
            Q(:,i) = Q(:,i)-(Q(:,j)'*A(:,i))/(Q(:,j)'*Q(:,j)) * Q(:,j);
        end
    end
    
    for i = i:n
        Q(:,i) = Q(:, i)/norm(Q(:,i));
    end
end