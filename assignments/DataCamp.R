#DataCampa
#Desriee Smith

#Q1
#Since a contains the text of my first name it will be a character

#Q2
#Since b1 contains 45.6 it is numeric

#Q3
#b2 is a string function

#Q4
b1=45.6
b2="45.6"
b1+b2
#When I tried to add the two together I recieved an error becasue they were two different datasets 

#Q5
c1=0:3
c1
class(c1)
class(b1)
#The variable b1 and c1 are not the same type. b1 is numeric and c1 is an integer 

#Q6
c1+b1
#When you add b1 + c1 it adds the interger to the numeric values and give us the answers

#Q7
v1= -2:2
v1

#Q8
v2= v1 * 3
v2

#Q9
sum(v2)
#The sum of all the elements in v2 is 0

#Q10
vec_4= 1:12
vec_4

#Q10

mat_1= matrix(vec_4, byrow= 3, ncol= 4)
mat_1

#Q11

mat_2= matrix(vec_4, nrow= 3, ncol= 4)
mat_2

#Q12
my_list_1= list(5.2, "five point two", 0:5)
my_list_1

#Q13
names(my_list_1)= c("two", "one","three")
my_list_1$three

#Q14
my_list_1[2]

#Q15
my_vec= rep(1:3,5)
my_vec

my_bool_vec= my_vec==3
my_bool_vec

#Q16
bool_df= data.frame(my_vec, my_bool_vec)
bool_df[my_bool_vec,"my_vec"]

