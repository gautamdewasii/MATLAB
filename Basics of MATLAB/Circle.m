% Define a subclass (derived class) that inherits from the Shape class
classdef Circle < Shape
    properties
        Radius
    end
    
    methods
        function obj = Circle(color, radius)
            % Call the constructor of the superclass
            obj@Shape(color);
            
            obj.Radius = radius;
        end
        
        function displayArea(obj)
            area = pi * obj.Radius^2;
            disp(['Circle Area: ' num2str(area)]);
        end
    end
end
