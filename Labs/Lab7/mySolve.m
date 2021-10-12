% Bradley Grose Section 4
% 10/6/2021
% Use Forward.m and Backward.m in same file for Ax=b

function x = mySolve(A, b)

   % Creates L and U
   [L, U] = MYLU(A);
   
   %Calls for forwards and Backwards sub
   y = forward(L, b);
   x = backward(U, y);
end