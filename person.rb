class Person
  attr_accessor :first_name, :last_name

  def initialize(first_name = nil, last_name = nil)
    @first_name = first_name
    @last_name = last_name 
  end

  def full_name
    if first_name && last_name 
      first_name + " " + last_name
    elsif first_name
      first_name
    elsif last_name
      last_name
    end
  end

  # Class's example of the method
  # def full_name
  #   if first_name || last_name
  #     first_name + " " + last_name
  #   else
  #     nil
  #   end
  # end

  #Refactored version
  # def full_name
  #   "#{first_name} #{last_name}" if first_name || last_name
  # end

  def reverse_name
    full_name.reverse if first_name || last_name
  end

  def upcase_full_name
    full_name.upcase if first_name || last_name
  end

end