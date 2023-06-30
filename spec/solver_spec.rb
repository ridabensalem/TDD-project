require_relative '../solver'

RSpec.describe Solver do
  let(:solver) { Solver.new }

  describe '#factorial' do
    it 'returns the factorial of a non-negative integer' do
      expect(solver.factorial(0)).to eq(1)
      expect(solver.factorial(1)).to eq(1)
      expect(solver.factorial(5)).to eq(120)
      expect(solver.factorial(10)).to eq(3_628_800)
    end

    it 'raises an exception for negative integers' do
      expect do
        solver.factorial(-1)
      end.to raise_error(ArgumentError, 'Factorial is only defined for non-negative integers.')
    end
  end

  describe '#reverse' do
    it 'reverses the given word' do
      expect(solver.reverse('hello')).to eq('olleh')
      expect(solver.reverse('world')).to eq('dlrow')
    end
  end

  describe '#fizzbuzz' do
    it 'returns "fizz" for numbers divisible by 3' do
      expect(solver.fizzbuzz(3)).to eq('fizz')
      expect(solver.fizzbuzz(9)).to eq('fizz')
    end

    it 'returns "buzz" for numbers divisible by 5' do
      expect(solver.fizzbuzz(5)).to eq('buzz')
      expect(solver.fizzbuzz(10)).to eq('buzz')
    end

    it 'returns "fizzbuzz" for numbers divisible by 3 and 5' do
      expect(solver.fizzbuzz(15)).to eq('fizzbuzz')
      expect(solver.fizzbuzz(30)).to eq('fizzbuzz')
    end

    it 'returns the number as a string for other cases' do
      expect(solver.fizzbuzz(7)).to eq('7')
      expect(solver.fizzbuzz(11)).to eq('11')
    end
  end
end
