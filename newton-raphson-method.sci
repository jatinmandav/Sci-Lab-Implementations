/*
    * By: Jatin Kumar Mandav
    *
    * Newton - Raphson Method is a method for finding successively
    * better approximations to the roots of a real-valued function.
    * It is one example of root finding algorithm.
    * 
    * Formula: x(n+1) = x(n) - f(x(n))/f'(x(n))
    *
*/

function [] = newton_raphson(coeffs, x0, start, endVal)
    functions = poly(coeffs, 'x', 'c')
    deriv = derivat(functions)
    for x = start: 0.0000001 : endVal
        y = horner(functions, x)
        y1 = horner(deriv, x)
        z = x0 + (y/y1)
        disp([x, z])
    end
endfunction
