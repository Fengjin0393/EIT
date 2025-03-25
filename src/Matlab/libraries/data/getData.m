% 从微控制器获取数据，并对数据进行初步检查和转换的功能。如果获取到的数据字段数量异常，会发出警告提示。
function new_data = getData(serial_port, conversion_factor)

new_data = getMcu(serial_port);

% The new_data can have only a max of 3 fields in any case
fields = fieldnames(new_data);
if numel(fields)>3
    % Either restart code or check 'values' in getMcu.m file
    warning("Data not correctly processed!"); 
end

new_data = convertData(new_data, conversion_factor);

end
