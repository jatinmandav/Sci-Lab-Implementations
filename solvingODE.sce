/*
    * By: Jatin Kumar Mandav
    *
    * Euler's Method: Is a first-order numerical procedure for solving
    * Ordinary Differential Equations with a given initial value.
    * It is the simplest Runge-Kutta Method
    *
    * Runge-Kutta 4th Order Method: is a nmerial technique used to
    * solve Ordinary Differential Equations (ODE).
    *
*/
function [result] = solveODE(func, x0, y0, xn, h, method)
    deff("res = f(x, y)", func)
    
    result = 0
    y1 = 0
    if(method == "euler")
        result = y0
        y1 = y0 + h*f(x0, y0)
        x0 = x0 + h
        y0 = y1
        while(x0 <= xn)
            result = y0
            y1 = y0 + h*f(x0, y0)
            x0 = x0 + h
            y0 = y1
         end
     else if (method == "runge-kutta")
         k1 = h*(f(x0, y0))
         k2 = h*(f(x0 + h/2, y0 + k1/2))
         k3 = h*(f(x0 + h/2, y0 + k2/2))
         k4 = h*(f(x0 + h, y0 + k3))
         k = (k1 + 2*k2 + 2*k3 + k4)/6
         
         result = y0
         y1 = y0 + k
         y0 = y1
         x0 = x0 + h
         
         while (x0 < xn)
             k1 = h*(f(x0, y0))
             k2 = h*(f(x0 + h/2, y0 + k1/2))
             k3 = h*(f(x0 + h/2, y0 + k2/2))
             k4 = h*(f(x0 + h, y0 + k3))
             k = (k1 + 2*k2 + 2*k3 + k4)/6
             
             y1 = y0 + k
             y0 = y1
             x0 = x0 + h
             result = y1
         end
     else
        printf("\nError\nMethod: euler, runge-kutta\n\n")
     end
     end
endfunction
