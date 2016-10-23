data = xlsread('PC_Scores.xlsx');
[rows, columns] = size(data);

abs_min_x = min(data(1,1:1000));
abs_min_y = min(data(2,1:1000));

abs_max_x = max(data(1,1:1000));
abs_max_y = max(data(2,1:1000));

% range_x1 = abs(minX1) + abs(maxX1);
% range_y1 = abs(minY1) + abs(maxY1);
% 
% range_x2 = abs(minX2) + abs(maxX2);
% range_y2 = abs(minY2) + abs(maxY2);



minRow = min(rows);
maxRow = min(rows);

% for ii = 1:rows - 1
%     ii
% end