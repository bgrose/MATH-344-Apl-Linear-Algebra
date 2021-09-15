% Bradley Grose Section 4
% 9/15/2021
% Find the binomial coefficient using not built in factorials

function binom = mybinomial(n, k)

    %Check For Correct Values
    if n < 0
        error('n is negative.');
    elseif k < 0 
        error('k is negative.');
    elseif n < k
        error('n is less than k.');
    else
        
        %Values are Good, Preset for calculations
        NminK = n-k;
        nFac = 1;
        kFac = 1;
        nKFac = 1;
        
        %Loops to find Factorials

        %Find n!
        while(n > 0)
            nFac = nFac * n;
            n = n-1;
        end

        %find k!
        while(k > 0)
            kFac = kFac * k;
            k = k-1;
        end

        %find n-k!
        while(NminK > 0)
            nKFac = nKFac * NminK;
            NminK = NminK-1;
        end
        
        %Do calculation and returns
        binom = nFac/(nKFac*kFac);
    end
end,