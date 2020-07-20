# 3.3.3. Les méthodes de classe

class User

  attr_accessor :email
  @@user_count = 0 # on initialise la variable de classe

  def initialize(email_to_save)
    @email = email_to_save
    @@user_count += 1
  end

  def self.count
    return @@user_count
  end

end

julie = User.new("julie@gmail.com")
puts "Nombre d'instances ouvertes : " + User.count.to_s
jean = User.new("jean@gmail.com")
puts "Nombre d'instances ouvertes : " + User.count.to_s
julie = User.new("julie@gmail.com")
puts "Nombre d'instances ouvertes : " + User.count.to_s
jean = User.new("jean@gmail.com")
puts "Nombre d'instances ouvertes : " + User.count.to_s

