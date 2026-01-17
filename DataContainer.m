classdef DataContainer < handle
    properties
        Value
    end
    methods
        function obj = DataContainer(val)
            obj.Value = val;
        end
    end
end