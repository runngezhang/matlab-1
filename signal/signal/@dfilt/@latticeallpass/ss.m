function [A,B,C,D] = ss(Hd)
%SS  Discrete-time filter to state-space conversion.
%   [A,B,C,D] = SS(Hd) converts discrete-time filter Hd to state-space
%   representation given by 
%     x(k+1) = A*x(k) + B*u(k)
%     y(k)   = C*x(k) + D*u(k)
%   where x is the state vector, u is the input vector, and y is the output
%   vector. 
%
%   See also DFILT.

%   Author(s): R. Losada
%   Copyright 1988-2002 The MathWorks, Inc.
%   $Revision: 1.4 $  $Date: 2002/05/04 01:48:11 $

k = Hd.Lattice;

[A,B]=statespaceab(Hd);

if isempty(k)
  C = [];
  D = 1;
else
  C = zeros(1,length(k));
  C(end) = 1-abs(k(end)).^2;

  D = conj(k(end));
end

% Force uniformity with empty state matrix.
if isempty(A)
  A = [];
  B = zeros(0,1);
  C = zeros(1,0);
end
