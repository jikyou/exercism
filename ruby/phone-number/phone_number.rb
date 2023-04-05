=begin
Write your code for the 'Phone Number' exercise in this file. Make the tests in
`phone_number_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/phone-number` directory.
=end

class PhoneNumber1
  def self.clean(phone)
    phone = phone.gsub(/\D/, '').delete_prefix('1')
    return if phone.size != 10
    return if phone[0].to_i < 2 || phone[3].to_i < 2

    phone
  end
end

class PhoneNumber2
  VALID_PHONE_NUMBER = /^([2-9]\d\d){2}\d{4}$/

  def self.clean(number)
    numbers = number.gsub(/\D/, '').sub(/^1/, '')
    numbers[VALID_PHONE_NUMBER]
  end
end

class PhoneNumber
  def self.clean(number)
    number.delete('^0-9')[/\A1?\K[2-9]\d{2}[2-9]\d{2}\d{4}\z/]
  end
end
