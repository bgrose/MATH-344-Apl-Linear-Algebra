% Bradley Grose Section 4
% 9/29/2021
% Compute A=LU and return L and U as Matrix

function [L, U] = MYLU(A)

    % Initializes Values
    L = eye(size(A,1));
    U = A;
    sizeA = size(A,1);
    
    %loop through row
    for i = 1:sizeA-1
        %loop through each column for values
        for j = i+1:sizeA
            L(j,i) = U(j,i)/U(i,i); %Forcing value to be 0 and dividing to make L
            U(j,i:sizeA) = U(j,i:sizeA)-L(j,i)*U(i,i:sizeA); %Make U value based off L
        end
    end
end