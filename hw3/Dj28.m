function Z = Dj28(x1,x2)
    x1 = rescale(x1,-5.12,5.12);
    x2 = rescale(x2,-5.12,5.12);
    Z = int32(ceil(x1))+int32(ceil(x2));
end
