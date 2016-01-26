class Sum
  def initialize(*args)
    @array = args
  end

  def execute
    @array.reduce(&:+)
  end
end
