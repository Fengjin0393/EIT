% 定义一个名为 config_experiment 的函数，该函数没有输入参数，返回值为 experiment 结构体
function experiment = config_experiment()

%% Specify Experiment Details
sensor_name = 'HU20190519'; % 定义传感器的名称为 'HU20190519'，可用于标识实验中使用的传感器设备
done_by = "Rahul"; % Name of person doing the experiment % 定义进行实验的人员姓名为 "Rahul"，将其存储在 done_by 变量中
notebook_details = "3, 130"; % Book No., Page No. % 定义实验记录所在的笔记本信息，格式为 "书籍编号, 页码"，这里是 "3, 130"
duration_to_collect = 90;   % in seconds % 定义实验数据采集的持续时间，单位为秒，这里设置为 90 秒

experiment = var2struct(sensor_name, done_by, notebook_details, duration_to_collect);
% 调用 var2struct 函数，将之前定义的变量 sensor_name、done_by、notebook_details 和 duration_to_collect转换为一个结构体
% 结构体的字段名与变量名相同，最终将这个结构体赋值给 experiment 并返回
end


