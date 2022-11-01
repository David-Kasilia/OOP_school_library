# Base decorator
require './nameable'

class BaseDecorator < Nameable
  def initialize(nameable)
    @nameable = nameable
    super()
  end

  def correct_name
    @namebale.correct_name
  end
end
