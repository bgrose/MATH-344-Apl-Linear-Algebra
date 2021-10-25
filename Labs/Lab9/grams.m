% Bradley Grose Section 4
% 10/20/2021
% Uses Gram-Schmidt process to return a matrix of the 
% resulting form

function Q = grams(A)
    [~, n] = size(A); % Get size
    Q = A % Copy A to Q for Operations
    for i = 2:n
        Q(:,i) = A(:,i); %Sets first part of equation
        for j = 1:i-1
            Q(:,i) = Q(:,i)-(Q(:,j)'*A(:,i))/(Q(:,j)'*Q(:,j)) * Q(:,j); %subtracts operation for j times based on i
        end
    end
    
    % Normalize Q
    for i = 1:n
        Q(:,i) = Q(:, i)/norm(Q(:,i));
    end
end
