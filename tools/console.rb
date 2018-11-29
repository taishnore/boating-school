require_relative '../config/environment'

# Declare your variables here~~~

  zaroon = Student.new("zaroon", "shah")
  mano = Student.new("mano", "shah")
  suniya = Student.new("suniya", "shah")

  otis = Instructor.new("Sir Otis")
  dr_morris = Instructor.new("Madame Morris")

  test1 = BoatingTest.new(mano, "mano_test", "scheduled", otis)
# don't remove!
binding.pry
