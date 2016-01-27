class StringCalculator
  def self.add(string_numbers)
    return 0 if string_numbers.empty?
    string_numbers.tr!("\n", ',')
    string_numbers.split(',').map(&:to_i).reduce(&:+)
  end
end
