function Z = Ms30(X,Y)
    X = rescale(X,-1,1);
    Y = rescale(Y,-1,1);
    temp = X.^2 + Y.^2;
    temp1 = temp.^0.25;
    ang = 50*temp.^0.1;
    temp2 = sin(ang).^2 + 1;
    Z = 2.5 - temp1 .* temp2;
end