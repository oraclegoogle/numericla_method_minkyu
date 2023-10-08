function [x,f,ea,n]=newtonrap(fx,dfx,initial_x,error_preset)
%minkyu_19011199_design

x=initial_x;
f=fx(x);
df=dfx(x);
n=0;
ea=100;
error_preset=error_preset/100;
x_prev=0;

while ea>error_preset

    x_prev=x;
    ea=abs((x-x_prev)/x);
    f=fx(x);
    df=dfx(x);
    x=x-f/df;
    n=n+1;
    

end

