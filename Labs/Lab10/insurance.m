% Bradley Grose Section 4
% 10/27/2021
% Read in insurance data and make linear regression

function insurance()

    data = load("insurance_data.txt");
    age = data(:,1);
    sex = data(:,2);
    BMI = data(:,3);
    kid = data(:,4);
    smk = data(:,5);
    charges = data(:,7);
    
    n = length(age);
    
    A = zeros(n,6);
    A(:,1) = ones(n,1);
    A(:,2) = age;
    A(:,3) = sex;
    A(:,4) = BMI;
    A(:,5) = kid;
    A(:,6) = smk;
    
    x = (A'*A) \ (A'*charges)
    
    fprintf("charges = "+x(1)+" + "+x(2)+" * age + "+x(3)+" * sex + "+x(4)+" * bmi + "+x(5)+" * children + "+x(6)+" * smoker\n")
    
    predict = x(1)+x(2)*38+x(3)*1+x(4)*19.3+x(5)*0+x(6)*1
    actualMinusPredict = 15820.699-predict
end