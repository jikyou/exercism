class SimpleCalculator
  class UnsupportedOperation < StandardError; end

  ALLOWED_OPERATIONS = ['+', '/', '*'].freeze

  def self.calculate(first_operand, second_operand, operation)
    raise UnsupportedOperation unless ALLOWED_OPERATIONS.include?(operation)
    raise ArgumentError unless first_operand.is_a?(Numeric)
    raise ArgumentError unless second_operand.is_a?(Numeric)
    return 'Division by zero is not allowed.' if operation == '/' && second_operand.zero?

    "#{first_operand} #{operation} #{second_operand} = #{first_operand.send(operation, second_operand)}"
  end
end
