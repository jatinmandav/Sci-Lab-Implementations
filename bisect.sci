/*
    * By: Jatin Kumar Mandav
    *
    * The Bisection Method in Mathematics is a root-finding method that
    * repeatedly bisects the interval and then selects a sub-interval in
    * which a root must lie for further processing.
    *
    * X(lower) and X(upper) such that F(X(lower)) * F(X(upper)) < 0.
    * X(mid) = (X(lower) + X(upper))/2
    * if F(X(mid)) * F(X(lower)) < 0: X(upper) = X(mid)
    * if F(X(mid)) * F(X(lower)) > 0: X(lower) = X(mid)
    * Error = ((X(NewMid) - X(OldMid))/X(NewMid))*100
    *
*/
function [result] = bisection(coeffs, xl, xu)
    errorVal = 100
    xmLast = (xl + xu)/2
    xm = xmLast
    functions = poly(coeffs, 'x', 'c')
    disp(functions)
    while(errorVal > 1e-50)
        fxl = horner(functions, xl)
        fxm = horner(functions, xm)
        signVal = fxl*fxm
        if (signVal < 0)
            xl = xl
            xu = xm
            xmLast = xm
            xm = (xu + xl)/2
        else
            xl = xm
            xu = xu
            xmLast = xm
            xm = (xu + xl)/2
        end
        errorVal = (abs(xm - xmLast)/xm)*100
    end
    result = xm
endfunction
