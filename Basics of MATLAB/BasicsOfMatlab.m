% 1)
% '%%' (double percentage) used for section break inside script. 
% useful when we want to run just one section of code



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




