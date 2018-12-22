# constrained nonlinear optimization
A1 = [13, 12, -2; 12, 17, 6; -2, 6, 12]
a2 = [-22; -14.5; 13]
b = 1
lb = [-1; -1; -1]
ub = [1; 1; 1]
h1 = @(x) -x + 1
h2 = @(x) x + 1
function retval = h(x)
  retval = [h1(x); h2(x)];
 endfunction
phi = @(x) 0.5*x'*A1*x + a2'*x + b
x0 = [0; 0; 0]
maxiter = 100
[x, obj, info, iter, nf, lambda] = sqp (x0, phi, [], [], lb, ub, maxiter)

