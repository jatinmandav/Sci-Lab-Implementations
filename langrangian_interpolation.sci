/*
    * By: Jatin Kumar Mandav
    *
    * In numerical analysis, Polynomial Interpolation is the 
    * interpolation of a given data set by the polynmial lowest 
    * possible degree that passes through the points of the data set.
    *
    * Formula: Fn(x) = Summation[i=0, n](Li(x)*Fi(X))
    * Where, Li(x) = Summation[j~=i, j=0, n]((x - x(j))/(x(i) - x(j)))
    *
*/
function [result] = langrangian_interpolation(x, list1, list2)
    L = list()
    pol = 0
    
    for i = 1:size(list1)
        L(i) = 1
        for j = 1: size(list2)
            if (i ~= j)
                L(i) = L(i)*((x - list2(j))/(list2(i) - list2(j)))
            end
        end
        pol = pol + list1(i)*L(i)
    end
    result = pol
endfunction
