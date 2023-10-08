function [x, f, ea, n] = bisect(fx, x_lower, x_upper, error_preset)
    %minkyu_19011199_design
    
    x = (x_lower + x_upper) / 2;
    f = fx(x);
    n = 0;
    ea = 100;
    error_preset=error_preset/100;

    while ea > error_preset
        x_prev = x;
        if fx(x_lower) * f < 0
            x_upper = x;
        else
            x_lower = x;
        end
        x = (x_lower + x_upper) / 2;
        f = fx(x);
        n = n + 1;
        ea = abs((x - x_prev) / x);
    end
end