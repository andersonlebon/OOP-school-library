 class Corrector
     def correct_name(name)
         if name.length() <= 10
            return name.capitalize()
         else
            return name[0, 10].capitalize()
         end
     end
 end