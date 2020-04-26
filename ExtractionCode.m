%% Insert subject initials at XX
Subject = "TI";
ordered_data = cell(1,6);
%% Fill Arrays Faces Only
for i=1:6
    list = [13, 14, 16, 17, 18, 19, 20, 21, 22, 23, 24];
    array = zeros(size(list, 2), size(roi_data{1,i}, 2));
    for j=1:size(list, 2)
        array(j, :) = roi_data{1, i}(list(j),:);
    ordered_data{1,i} = array;
    end
end
%% Save Only Face Responses
save(strcat(Subject, "_ordered_data"), 'ordered_data');
%% Save All Responses
save(strcat(Subject, "_full_data"), 'roi_data');