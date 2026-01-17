classdef Point2D < handle
    properties
        x = 0.0;
        y = 0.0;
    end
    methods
        function obj = Point2D(x, y)
            if nargin > 0
                obj.x = x;
                obj.y = y;
            end
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
