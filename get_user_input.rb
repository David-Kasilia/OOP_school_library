class GetUserInput
  def self.get_user_input(input)
    print input.to_s
    gets.chomp
  end

  def self.get_user_input_int(input)
    print input.to_s
    gets.chomp.to_i
  end

  def self.propmt_user?(input)
    print "#{input}? [Y for Yes, N for No]"
    selected = gets.chomp.downcase
    if selected.start_with?('y')
      true
    elsif selected.start_with?('n')
      false
    end
  end
end
