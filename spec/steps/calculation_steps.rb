calculator_result = nil
step 'I run the calculation' do
  puts 'todo: run calculator here'
  calculator_result = 42.25 # TODO: run the calculator
end

step 'The output should be :decimal' do |sum|
  expect(calculator_result).to eq(sum)
end

# Convert decimal strings to decimal values. Ref: https://github.com/jnicklas/turnip#custom-step-placeholders
placeholder :decimal do
  match(/\d+\.?\d+/, &:to_d)
end