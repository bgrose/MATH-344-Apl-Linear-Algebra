% Bradley Grose Section 4
% 10/6/2021
% Uses forward substitution to solve Lx=b

function x = forward(A, b)
   %Get Size  and set ret
   n = size(A,1);
   x = zeros(n,1);

   %loop from top down

   for i = 1:1:n
       sum = 0;
       
       %Find the sum for the value
       for j = 1:i-1
           sum = sum +A(i,j)*x(j);
       end
       %sub from sum and divide by A
       x(i) = (b(i) - sum)/A(i,i);
   end
end
