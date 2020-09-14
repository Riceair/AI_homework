function Z = Ms32(X,Y)
    X = rescale(X,-500,500);
    Y = rescale(Y,-500,500);
    Z = X.*sin(sqrt(abs(X)))+Y.*sin(sqrt(abs(Y)));
end
