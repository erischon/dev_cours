# 3.3.2. Variables de classe

class User
  attr_accessor :email
  @@user_count = 0 # on initialise la variable de classe qui sera un compteur du nombre d'instance

  def initialize(email_to_save)
    @email = email_to_save
    @@user_count = @@user_count + 1 # un utilisateur vient d'être créé : on ajoute donc 1 au compteur
    #@@user_count += 1 # possible ?
  end

end

julie = User.new("julie@gmail.com")

puts julie.email