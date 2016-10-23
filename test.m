data = xlsread('PC_Scores.xlsx');
[rows, columns] = size(data);

minX1 = min(data(1,1:500));
minY1 = min(data(2,1:500));

maxX1 = max(data(1,1:500));
maxY1 = max(data(2,1:500));

minX2 = min(data(1,500:1000));
minY2 = min(data(2,500:1000));

maxX2 = max(data(1,500:1000));
maxY2 = max(data(2,500:1000));

if minX1 < minX2
   min_x = minX1;
else
    min_x = minX2;
end

if maxX1 > maxX2
   max_x = maxX1;
else
    max_x = maxX2;
end

if minY1 < minY2
   min_y = minY1;
else
    min_y = minY2;
end

if maxY1 > maxY2
    max_y = maxY1;
else
    max_y = maxY2;
end

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