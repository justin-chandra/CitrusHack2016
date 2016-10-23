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

%for ii = 1:rows - 1
%     ii
% end