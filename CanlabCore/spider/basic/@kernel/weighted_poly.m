function K = weighted_poly(kern,dat1,dat2,ind1,ind2,kerParam),
% K = weighted_poly(d1,d2,ind1,ind2,param), 
%  compute the kernel matrix between d1 and d2
%  for a weighted polynomial kernel 
%  (<x,z>+1)^param where x is from d1 and z from d2

K = get_x(dat2,ind2);  
K2 =get_x(dat1,ind1);  
K= (K*K2'+1).^kerParam{2};