classdef View < handle
    properties
        hFig
        hEdit
    end
    methods
        function obj = View()
            obj.hFig = figure('Position', [100, 100, 400, 300]);
            obj.hEdit = uicontrol('Style', 'edit', 'parent', obj.hFig); 
        end
    end
end