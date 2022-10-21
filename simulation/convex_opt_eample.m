% convex optimization
% minimize
%   J(x) = 1/2 * x' * N * x + M' * x, 
% subject to
%   A*x <= b,   lb <= x <= ub

% 目的関数を設定
N = [1, 3;
     3, 5];
M = [-2;
     1];

% 拘束条件を設定
A = [];
b = [];
lb = -1 * ones(2,1);
ub = 1 * ones(2,1);

% アルゴリズムを設定
options = optimoptions('quadprog', 'Algorithm','interior-point-convex', 'Display', 'iter');

% 最適化実行
[x_opt, fval, exitflag, output, lambda] = quadprog(N, M, A, b, [], [], lb, ub, [], options);