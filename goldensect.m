function [x,f,ea,n]=goldensect(fx,x_lower,x_upper,error_preset)
%minkyu_19011199_design
f=100;
n=0;
ea=100;
error_preset=error_preset/100;

x_opt=0;

x_1=0;
x_2=0;

phi=1.61803;
d=(x_upper-x_lower)*(phi-1);
x_1=x_lower+d;
x_2=x_upper-d;

while ea>error_preset

   if fx(x_1)<fx(x_2)

       
       x_upper=x_2;
       d=(phi-1)*(x_upper-x_lower);
       x_1=x_upper-d;
       x_2=x_lower+d;
       x_opt=x_1;
       
   else
      
       x_lower=x_1;
       d=(phi-1)*(x_upper-x_lower);
       x_1=x_upper-d;
       x_2=x_lower+d;
       x_opt=x_2;

   end

   ea=(2-phi)*abs((x_upper-x_lower)/x_opt);
   n=n+1;
   f=fx(x_opt);
   x=x_opt;


end



