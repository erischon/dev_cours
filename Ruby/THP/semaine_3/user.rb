require "pry"

class User # début de la classe
  
  attr_writer :mastercard

  def read_mastercard
    return @mastercard
  end
  
  
  def greet
    puts "Bonjour, monde !"
  end

  def say_hello_to_someone(first_name)
    puts self.to_s + " : " + "Bonjour, #{first_name} !"
  end

  def update_email(email_to_update)
    @email = email_to_update
  end

  def read_email
    return @email
  end

end # fin de la classe

#binding.pry
puts "end of file"

julie = User.new
jean = User.new

julie.say_hello_to_someone("Patrick")
jean.say_hello_to_someone("Marie")

julie.update_email("julie@julie.com")
jean.update_email("jean@jean.com")

puts "L'email de Julie est : #{julie.read_email}"
puts "L'email de Jean est : #{jean.read_email}"

julie.mastercard = "4242 4242 4242 4242"
#julie.mastercard
mastercard_number = julie.read_mastercard
puts mastercard_number
