% 这段代码是对函数 var2struct具体实现内容的体现，它的主要功能是将输入的一系列变量转换为一个结构体。
% 具体来说，它会获取每个输入变量的名称，并将这些变量的值分别赋给结构体中具有相同名称的字段。
% 这样做的好处是可以方便地将多个相关变量组织到一个结构体中，便于后续的操作和管理。
function conversion_factor = associateConversionFactor(conversion_factor, data_info)

conversion_factor.voltage.len    = data_info.conv_fact.voltage;
conversion_factor.resistance.len = data_info.conv_fact.resistance;
conversion_factor.time.len       = data_info.conv_fact.time;

end
