/*
    * By: Jatin Kumar Mandav
    *
    * Trapezoidal Method: In Numerical Analysis, the trapezoidal rule is
    * a technique for approximating the definite integral.
    * The Trapezoidal Rule works by approximating the region under the
    * graph of the function f(x) as a trapezoid and calculating its area.
    *
    * Simpson's Method: is a method of numerical integration that
    * provides an approximation of a definite integral over the
    * interval [a,b] using parabolas.
    *
*/
function [result] = integration(func, a, b, N, method)
    deff("y = f(x)", func)
    h = (b - a)/N
    summation = 0
    while(a < b)
        if (method == "trapezoidal")
            summation = summation + (h/2)*(f(a) + (f(a + h)))
            a = a + h
        else if (method == "simpson")
            summation = summation + (h/3)*(f(a) + 4*f(a + h) + f(a + 2*h))
            a = a + 2*h
        else
            printf("\nError\nMethods: trapezoidal, simpson\n\n")
            break
        end
        end
    end
    result = summation
endfunction
