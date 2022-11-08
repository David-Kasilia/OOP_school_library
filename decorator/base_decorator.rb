# Base decorator
require './separate_classes/nameable'

class BaseDecorator < Nameable
  def initialize(nameable)
    @nameable = nameable
    super()
  end

  def correct_name
    @namebale.correct_name
  end
end
