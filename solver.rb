class Solver
  def factorial(number)
    raise ArgumentError, 'Factorial is only defined for non-negative integers.' if number.negative?

    factorial = 1
    (1..number).each do |n|
      factorial *= n
    end
    factorial
  end

  def reverse(word)
    word.reverse
  end

  def fizzbuzz(number)
    return 'fizzbuzz' if (number % 3).zero? && (number % 5).zero?
    return 'fizz' if (number % 3).zero?
    return 'buzz' if (number % 5).zero?

    number.to_s
  end
end
