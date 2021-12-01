require 'rspec'

class Calculator
  def add(number_one, number_two)
    return number_one + number_two
  end

  def subtract(number_one, number_two)
    return number_one - number_two
  end

  def multiply(number_one, number_two)
    return number_one * number_two
  end

  def divide(dividend, divisor)
    return dividend / divisor
  end

  def sqaure(number)
    return number*number
  end

  def power(number, exponent)
    return number ** exponent
  end
  def geometricMean(number1, number2)
    return (number1 * number2)**0.5
  end
end

RSpec.describe Calculator do
  describe '#add' do
    it 'should return the sum of two numbers' do
      calculator = Calculator.new
      result = calculator.add(5, -1)
      expect(result).to eq(4)
    end

    it 'should work with negative numbers' do
      calculator = Calculator.new
      result = calculator.add(1, -3)
      expect(result).to eq(-2)
    end

    it 'should return the difference of two numbers' do
      calculator = Calculator.new
      result = calculator.subtract(5, -3)
      expect(result).to eq(8)
    end

    it 'should return product of two numbers' do
      calculator = Calculator.new
      result = calculator.multiply(-3, -3)
      expect(result).to eq(9)
    end
    it 'should return result of dividing two numbers' do
      calculator = Calculator.new
      result = calculator.divide(-4, -4)
      expect(result).to eq(1)
    end
    it 'should return square of a number' do
      calculator = Calculator.new
      result = calculator.sqaure(2)
      expect(result).to eq(4)
    end
    it 'should return power of a number' do
      calculator = Calculator.new
      result = calculator.power(4,2)
      expect(result).to eq(16)
    end

    it 'should return geometric mean of two numbers' do
      calculator = Calculator.new
      result = calculator.geometricMean(8,2)
      expect(result).to eq(4)
    end

  end
end