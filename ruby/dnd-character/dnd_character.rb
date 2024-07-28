=begin
Write your code for the 'D&D Character' exercise in this file. Make the tests in
`dnd_character_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/dnd-character` directory.
=end

class DndCharacter

  def self.modifier(constitution)
    (constitution-Helpers::BASE_HITPOINTS)/2
  end

  def initialize
    @attributes = Class.new.extend(Helpers).attributes()
  end

  def hitpoints
      return self.class.modifier(constitution) + Helpers::BASE_HITPOINTS
  end

  def method_missing(name, *args)

    super unless @attributes.include?(name)

    value = ability_value
    Kernel.send :define_method, name do
      value
    end
    value
  end

  private

  def ability_value
    4.times.map { rand(1..6) }.max(3).sum
  end

end
