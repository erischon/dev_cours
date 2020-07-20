# 3.4. Méthodes publiques, méthodes privées

class User
  attr_accessor :email #on définit une variable d'instance lisible et modifiable

  def initialize(email_to_save) #on définit un initialize
    if check_email(email_to_save) # on vérifie l’e-mail proposé via une méthode check_email (cf plus bas)
      @email = email_to_save #si l’e-mail passe le check => on le sauve dans l'instance
    else
      puts "ERREUR ! EMAIL FOIREUX. Recommence" #si l’e-mail ne passe pas le check => message d'erreur
    end
  end

  private #Toutes les méthodes en dessous de cette balise seront privées. A mettre en bas de ta classe donc !

  def check_email(email_to_save)
    # du code pour vérifier le format de l’e-mail (on ne rentre pas dans le détail)
    # si l’e-mail est ok, ça renvoie TRUE. Sinon FALSE
  end

end