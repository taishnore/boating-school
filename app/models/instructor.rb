class Instructor

  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def fail_student(student_name, test_name)
    this_test = self.boating_tests.find do |test|
        test_name == test.name && test.student.full_name == student_name
      end
    this_test.status = "failed"
    this_test
  end

  def fail_student(student_name, test_name)
    this_test = self.boating_tests.find do |test|
        test_name == test.name && test.student.full_name == student_name
      end
    this_test.status = "passed!"
    this_test
  end
  # binding.pry
  def boating_tests
    BoatingTest.all.select do |test|
      self == test.instructor
    end
  end

end
