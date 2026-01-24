classdef View < handle
    properties
        hFig
        hEdit
    end
    properties(Dependent)
        text
    end
    methods
        function obj = View()
            obj.hFig = figure();
            obj.hEdit = uicontrol('Style', 'edit', 'parent', obj.hFig); 
        end
        function str = get.text(obj)
            str = get(obj.hEdit, 'String');
        end
        function set.text(obj, str)
            set(obj.hEdit, 'String', str);
        end
    end
end