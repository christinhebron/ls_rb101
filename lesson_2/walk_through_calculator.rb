=begin
build a command line calculator that does the following:
1. ask for 2 numbers
2. asks for the type of operation to perform: add, subtract, multiply, divide
3. perform the operation on the two numbers
4. displays result
=end

#answer = Kernel.gets()
#Kernel.puts(answer)

Kernel.puts("Welcome to the Calculator!")

Kernel.puts("What's the first number?")
number1 = Kernel.gets().chomp()

Kernel.puts("What's the second number?")
number2 = Kernel.gets().chomp()

Kernel.puts("Which operation would you like to perform? 1) add 2) subtract 3) multiply 4) divide")
operator = Kernel.gets().chomp()

if operator == '1'
  result = number1.to_i() + number2.to_i()
elsif operator == '2'
  result = number1.to_i() - number2.to_i()
elsif operator == '3'
  result = number1.to_i * number2.to_i()
else
  result = number1.to_f() / number2.to_f()

end

Kernel.puts("The result is #{result}")

