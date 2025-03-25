% 首先创建了 data_info 结构体，并且给它的 names、fn 和 sizes 字段赋值。
% 然后，使用 for 循环遍历 data_info.names 数组，获取每个数据的文件名、数据处理函数和矩阵大小，并将这些信息打印输出。
function data = initData(data_info)
% data : (struct)
%    - field_name : (struct) 
%              - val : actual data is stored
%              - idx : index where next data should be put
%              - len : length of vector i.e., num of rows
%    - next_field_name
%              - val
%              - idx
%              - len
%       ... so on


% Generate a struct with field names according to excel sheet names 
% defined in setup_file function.

for i=1:size(data_info.names,1)
    field_name   = data_info.names(i);
    field_fn     = data_info.fn;
    field_size   = data_info.sizes(i,:);
    
    data.(field_name).idx = 1;
    data.(field_name).len = field_size(1);
    data.(field_name).val = field_fn(field_size);
end

end
