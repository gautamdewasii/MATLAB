% Define a superclass (base class)
classdef Shape
    properties
        Color
    end
    
    methods
        function obj = Shape(color)
            obj.Color = color;
        end
        
        function displayColor(obj)
            disp(['Color: ' obj.Color]);
        end
    end
end
