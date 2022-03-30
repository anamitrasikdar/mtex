function SO3F = plus(SO3F1,SO3F2)
% overloads SO3F1 + SO3F2
%
% Syntax
%   SO3F = SO3F1 + SO3F2
%   SO3F = a + SO3F1
%   SO3F = SO3F1 + a
%

SO3F = SO3FunComposition(SO3F1, SO3F2);
  
end