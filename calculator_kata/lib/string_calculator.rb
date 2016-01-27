class StringCalculator
  def self.add(string_numbers)
    return 0 if string_numbers.empty?
    delimiters = /(,|\n)/
    delimiters = string_numbers[2] if string_numbers.start_with?('//')

    string_numbers.split(delimiters).map(&:to_i).reduce(&:+)
  end
end
