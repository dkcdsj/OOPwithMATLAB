classdef Grid < handle
    properties
        % 灾难源头：这里初始化了一个句柄对象
        % 这个表达式只运行一次！所有 Grid 实例都指向同一个 DataContainer 对象
        SharedData = DataContainer([1, 2, 3]) 
    end
    methods
        function obj = Grid()
            obj.SharedData = DataContainer([1, 2, 3]);% 构造函数
        end
    end
end

