require_relative '../config/environment'

# Declare your variables here~~~

# Declare some new students

helen = Student.new("Helen", "L.")
prince = Student.new("Prince", "W.")


bijon = Instructor.new("Bijon")
scott = Instructor.new("Scott")

prince.add_boating_test(scott, "Airplanes", "pending")
prince.add_boating_test(scott, "Airplanes 2", "pending")
prince.add_boating_test(scott, "Airplanes 3", "pending")

helen.add_boating_test(bijon, "Submarines", "pending")


# don't remove!
binding.pry
0
