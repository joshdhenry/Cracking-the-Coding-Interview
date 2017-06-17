//16.1 - Number Swapper
//Write a function to swap a number in place (without temporary variables)

var a: Int = 9
var b: Int = 4

a = a - b
b = a + b
a = b - a

a
b

//Using bit manipulation (XOR)
a = 5
b = 6

a = a^b //101^110 = 011
b = a^b //011^110 = 101
a = a^b //011^101 = 110

