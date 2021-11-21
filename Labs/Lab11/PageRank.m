function r0 = PageRank(L)
    r0 = [1;1;1;1;1;1;1;1;1;1];
    
    for i = 1:10
        r0 = L*r0;
    end
end