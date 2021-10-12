% Bradley Grose Section 4
% 10/6/2021
% Uses backwards substitution to solve UX=x

function x = backward(A, b)

   %Get Size  and set ret
   n = size(A,1);
   x = zeros(n,1);

   %loop from bottom uo
   for i = n:-1:1
       sum = 0;
       
       %Find the sum of the values
       for j = i:n
           sum = sum +A(i,j)*x(j);
       end
       
       % sub from sum and divide by A
       x(i) = (b(i) - sum)/A(i,i);
   end
end
