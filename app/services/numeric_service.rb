class NumericService
  def factorial(n)
    raise 'Invalid argument!' if n < 0

    return 1 if n == 0

    (1..n).inject(1) { |r, i| r * i } if n > 0
  end
end