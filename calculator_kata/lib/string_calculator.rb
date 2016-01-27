class StringCalculator
  def self.add(string_numbers)
    return 0 if string_numbers.empty?
    delimiters = /(,|\n)/
    delimiters = string_numbers[2] if string_numbers.start_with?('//')
    array_numbers = string_numbers.split(delimiters).map(&:to_i)
    negative_numbers = array_numbers.select(&:negative?)
    fail "Negative numbers are not allowed: #{negative_numbers}" unless negative_numbers.empty?

    array_numbers.reduce(&:+)
  end
end
