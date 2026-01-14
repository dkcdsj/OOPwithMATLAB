classdef Point2D < handle
    properties
        x
        y
    end
    methods
        function obj = Point2D(x, y)
            obj.x = x;
            obj.y = y;
        end
        function normalize(obj)
            r = sqrt(obj.x^2 + obj.y^2);
            if r > 0
                obj.x = obj.x / r;
                obj.y = obj.y / r;
            end
        end
    end
end
