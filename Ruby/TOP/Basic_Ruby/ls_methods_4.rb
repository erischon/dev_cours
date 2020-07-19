def add_three(n)
  new_value = n + 3
  puts "La nouvelle valeur (locale) est #{new_value}"
  new_value # pour que cette variable soit retournée il faut qu'elle soit en dernier ou qu'elle ai return
  puts "L'argument est #{n}" # si je mets cette ligne en dernier la method ne return rien et si je mets un return au-dessus cette ligne n'est pas prise en compte
end

new_value_outside = add_three(2)

puts "La nouvelle valeur (general) est #{new_value_outside}" # si pas de return il n'y a rien dans new_value_outside