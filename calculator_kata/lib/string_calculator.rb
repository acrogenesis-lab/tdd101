class StringCalculator
  def self.add(string_numbers)
    return 0 if string_numbers.empty?
    string_numbers.split(/(,|\n)/).map(&:to_i).reduce(&:+)
  end
end
