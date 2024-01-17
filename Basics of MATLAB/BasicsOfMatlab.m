% 1)
% '%%' (double percentage) used for section break inside script. 
% useful when we want to run just one section of code

% 2) 
% '.m' script is used for saving code
% '.mat' is used for saving current varible state of workspace
% ex :-
% save("filename.mat")
%load("filename.mat")

% 3) 
% select keyword + f1 => help

% 4) 
% clear all :- to undefine all workspace variables
% clc :- to clean all windows output
% whos :- gives details about all define variables



%% VARIABLES 
% scalar : - contains only one value/element in it
num1=20;
num2=40;
sum=num1+num2;

%vectors:- contains multiple scalar objects/elements in it
student_marks=[80,89,67,54,78,76];
classes=[8 10 11 12 9 7];
max(student_marks);

%matrices :- contains multiple vector objects/elements in it
names=["Gautam","ishwar","vikash";"sandhya","kaveri","sanju"];
matrix=[1 2 3 ; 4 5 6; 7 8 9];
disp(names);
disp(matrix);
%%

%% DEFINING MULTIPLE VARIABLE in single go :-
x=10;y=20;
disp(x);
disp(y);
%%
%% DataTypes:-

% Numerical :- note :- length of each row should be equal while creating
% numerical, double or char matrix
a=20;
b=[1 2 3];
c=int32(42);
d=uint8(255);
disp(a);
disp(b);
disp(c);
disp(d);

% double :-
a=3.14;
% single :- less precision then double, using less memory then double
b=single(3.14);
disp(b);
disp(a);

% character ( char ) :- Note total number of character at each element
% should be equal .
name="Hi this is Gautam";
name(2,:)=name(1,:);
disp(name);

% cell Array :- A container for storing data of different types and sizes. 
% Each element can be of any data type.
element={2,3.14,"Gautam",[1,2;3,4]};
disp(element);

%NOTE :- string() absolute in new version ( instead of it use char )

% logical :- true(1) ,false(0)
flag=false;
disp(flag);
% all non zero will replaced with 1(true)
matrix=logical([1,2,3;0,1,0]);
disp(matrix);

% struct :- struct is a data type that allows you to group related data 
% together. Each piece of data within a structure is referred to as a field
person.name="Gautam";
person.class=16;
person.age=22;
person.city="Delhi";
disp(person);

%%

%% IF STATEMENTS: - 
number=input("enter any number :  ");
if number==0
    disp("number is 0 ");
elseif mod(number,2)==0
    disp("even number");
else
    disp("odd number");
end
%%

%% SWITCH :-
name ="True";
switch name
    case "True"
        disp("its True");
    case "False"
        disp("False");
    otherwise
        disp("Unknown")
end
%%

%% LOOPS :-

% for loop
for i= 1:10
    disp(i);
end

% while loop
a=10;
while a <= 15
    disp(a);
    a = a + 1;
end

% Vectorized Operations: 
%Element-wise multiplication using vectorized operation
a=[1,2,3];
b=[4,5,6];
disp((a.*b));

%%

%% CONSTANTS :- 
% ->   'pi' , 'i' or sqrt(-1) etc
%NOTE :- we can change the value of these constant according to our
%requiremnets

%%

%% FUNCTIONS :-

print("hi this is Gautam");


% or

num1=20;
num2=15;
result=summ(num1,num2);
disp(result)
%%

%% Classes and Objects
obj1=Employee('Gautam','navodhya nagar',[89,76,78,56],"IT");
obj1.print();
disp(obj1.marks());

%%
%% Inheritance :- 
% Create objects of the derived class
myCircle = Circle('Red', 5);

% Access properties and methods from both superclass and subclass
myCircle.displayColor();
myCircle.displayArea();


%%
%% Enumeration :- 
name=Colors.Red;
disp(name);
if name==Colors.Green
    disp("GREEN");
elseif name==Colors.Red
    disp("Red");
else
    disp("Blue");
end

%%


%% Vector initialization :-
% create vector with 10 scalars from 1 to 10
x=1:10;
disp(x);

% create vector from 10 to 20 with 2 gap
y=10:2:20;
disp(y);

% transpose of vector
z=(10:2:20)';
disp(z);

%%

%% vector/array indexing : -
%NOTE:- in matlab, array index starting from 1.

a=[12,323,43,54,65,76];
% 3rd element
disp(a(3));
% all elements of fist row
% a(rows,columns)
disp(a(1,:));
% from 2nd to 4th element of 1 row
disp(a(1,2:4));

%%

%% Matrix indexing :-
%NOTE :- indexing starting from 1, and moves in the rows style.
mat=[21,23;56,78];
disp(mat(3));
disp(mat(1,1:2));
disp(mat(:,end-1:end));
%%

%% SubMatrix out of Matrix
mat=[1,2,3,4,5;6,7,8,9,10;11,12,13,14,15;16,17,18,19,20];
disp(mat);
disp(mat(1:2,3:5));
%%

%% PreDefine functions -
% size():- gives the size of any variables.
% for scalar :- (1,1)
print(size("hi"));
% 
% sin()
% cos()
% tan()
% exp()
% log()
% exp()
% or

% length, size: Determine the size of an array.
% sum, mean, std, min, max: Basic statistical functions.
% find: Find indices of nonzero elements.
% strcmp: Compare strings.
% ismember: Check if elements are members of a set.

% eye( n ) - create identity matrix of n*n
% zeros(n) - create null matriz of n*n
% ones( n) - create 1 matrix of n*n
%%


%% MATRIX OPERATIONS:-
mat1=[1,2,3;4,5,6];
mat2=[0,1,0;7,8,9];
disp(mat1);
disp(mat2);
% transpose
disp(mat1');
% used for addition(+),substraction(-_ and multiplication(*)
disp(mat1+mat2);

% multiplying with same indexing only
% (.) dot operator used
disp(mat1.*mat2)
%%


%% Basic Learn Equations :-
% 2x+2y+z=20
% -3x-y-z=-18
% x+y+2z=16

a=[2,2,1;-3,-1,-1;1,1,2];
c=[20;-18;16];

% we knows, a*x=c
% thus, x=inverse(a)*c
% where x[x;y;z]
x=a\c;  % or can use inv(a)*c, but inv() is slower then \
disp(x);