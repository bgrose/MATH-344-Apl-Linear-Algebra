% Bradley Grose Section 4
% 9/8/2021
% Calculates Grades from a Vector and Returns
% final score

function curvedGrades = calculateGrades(grades)
    n = length(grades); % Finds Length
    sum = 0;
    for i = 1:n % Finds Sum off All Grades
        sum = sum + grades(i);
    end
    mean = sum / n;
    curvedGrades = 70*grades/mean; %Normalizes the grades so mean is 70

end