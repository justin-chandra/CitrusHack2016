data = xlsread('PC_Scores.xlsx');
[rows, columns] = size(data);
temp_Matrix = transpose(data);
temp_Matrix = sortrows(temp_Matrix);
newMatrix = transpose(temp_Matrix);

abs_max_x = max(data(1,1:1000));
abs_max_y = max(data(2,1:1000));

abs_min_x = min(data(1,1:1000));
abs_min_y = min(data(2,1:1000));

x_range = abs(abs_max_x) + abs(abs_min_x);
y_range = abs(abs_max_y) + abs(abs_min_y);

minRow = min(rows);
maxRow = min(rows);

area = x_range * y_range;
square = area / 100;

% Start at (min_x + square, min_y + square), iterate through all the 
% points and see which ones fall within that range
% When done iterating through all the points, change the boxes to (min_x + square * which ever box #)
% ex
%     start at -1, 10 and the size of the box is .1
%     the box would be from (-1 + .1, 10 + .1)
%     the next box would be (-1 + .1*n, 10 + .1)
%     
% when you get to the end, go back to the x min and add the box size to the y

%for ii = 1:rows - 1
%     ii
% end