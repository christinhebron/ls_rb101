=begin
1. Start prompt: Welcome to My Loan Calculator
2. GET What is your loan amount? (validate integer or float?
3. GET What is your APR? (convert to monthly interest rate: APR / 12)
4. GET What is your loan duration? (Convert years to months)
5. PRINT Calculation of monthly payment and interest rate
=end

def prompt(message)
  puts("=> #{message}")
end

loop do
  prompt("Welcome to My Loan Calculator!")

  loan_amount = ''
  loop do
    prompt("What is your total loan amount?")
    loan_amount = gets.chomp
    if loan_amount.to_f <= 0 || loan_amount.empty?
      prompt("Invalid number. Please try again.")
    else
      break
    end
  end

  apr = ''
  loop do
    prompt("What is your annual percentage rate?")
    apr = gets.chomp
    if apr.to_f <= 0 || apr.empty?
      prompt("Invalid number. Please try again.")
    else
      break
    end
  end

  duration_in_years = ''
  loop do
    prompt("What is your loan duration in years?")
    duration_in_years = gets.chomp
    if duration_in_years.to_i <= 0 || duration_in_years.empty?
      prompt("Invalid number. Please try again")
    else
      break
    end
  end

  monthly_interest = (apr.to_f / 12) / 100
  
  duration_in_months = duration_in_years.to_i * 12
  
  monthly_payment = loan_amount.to_f * (monthly_interest / (1 - 
      (1 + monthly_interest)**(-duration_in_months)))

  prompt("Your monthly payment will be $#{monthly_payment.ceil(2)} at an 
      interest rate of #{monthly_interest.ceil(2)}% for
      #{duration_in_months} months.")

  prompt("Do you want to perform another calculation?")
  answer = gets.chomp
  break unless answer.downcase.start_with?('y')
end

prompt("Thank You for Using My Loan Calculator")
