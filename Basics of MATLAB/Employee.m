classdef Employee
    % fields 
    properties
        Name;
        Address;
        All_marks; 
    end
    % defining scope and access for member variables
    % 'GetAccess' , 'SetAccess' and 'Access'
    properties(SetAccess=private)
        Branch;
    end
    methods
        % constructor 
        function self=Employee(name,address,all_marks,branch)
            self.Name=name;
            self.Address=address;
            self.All_marks=all_marks;
            self.Branch=branch;
        end

        function average = marks(self)
            disp("average marks")
            average=mean(self.All_marks);
        end

        function print(self)
            disp(self.Name);
            disp(self.Address);
            disp(self.All_marks);
            disp(self.Branch);
        end
    end
end