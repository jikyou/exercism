=begin
Write your code for the 'Phone Number' exercise in this file. Make the tests in
`phone_number_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/phone-number` directory.
=end

class PhoneNumber
  def self.clean(phone)
    phone = phone.gsub(/\D/, '').delete_prefix('1')
    return if phone.size != 10
    return if phone[0].to_i < 2 || phone[3].to_i < 2

    phone
  end
end
