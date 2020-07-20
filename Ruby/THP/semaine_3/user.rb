require "pry"

class User # début de la classe
  
  attr_writer :mastercard
  attr_reader :birthdate
  attr_accessor :email

  def update_birthdate(birthdate_to_update)
    @birthdate = birthdate_to_update
  end

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

puts "\n========================================"

julie = User.new
jean = User.new

julie.say_hello_to_someone("Patrick")
jean.say_hello_to_someone("Marie")

puts "\n========================================"

julie.update_email("julie@julie.com")
jean.update_email("jean@jean.com")

puts "L'email de Julie est : #{julie.read_email}"
puts "L'email de Jean est : #{jean.read_email}"

puts "\n========================================"

julie.mastercard = "4242 4242 4242 4242"
#julie.mastercard #erreur, on ne peut appeller la variable
mastercard_number = julie.read_mastercard
puts mastercard_number

puts "\n========================================"

julie.update_birthdate("06/01/1991") 
julie.birthdate

#julie.birthdate = "06/01/1991" #erreur, on ne peut la modifier
