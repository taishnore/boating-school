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

  # `Instructor#boating_tests`
  #   - Shows all boating tests that
  #     this instructor is conducting

  def boating_tests
    # Return an array of BoatingTests that BELONG TO
    # this instructor
    # Steps
    # 1) Iterate over all the boating tests
    # 2) Select the ones that belong
    #    to me (hint: boating tests have an attribute called instructor)
    # 3) Return that array back
    BoatingTest.all.select do |boating_test|
      # Checking if this particular boating test
      # belongs to ME (the thing calling this method)
      # binding.pry
      boating_test.instructor == self
    end
  end

  # - `Instructor#pass_student(student_name, test_name)`
  #   - Changes a test's status to being `passed`

  def pass_student(student_name, test_name)
    # BoatingTest.all
    # self.boating_tests
    found_boating = boating_tests.find do |boating_test|
      # the test name matches and the student's name matches
      (boating_test.test_name == test_name) && (boating_test.student.full_name == student_name)
    end

    if found_boating != nil
      found_boating.test_status = "PASSED"
    else
      nil
    end
  end
  def fail_student(student_name, test_name)
    # BoatingTest.all
    # self.boating_tests
    found_boating = boating_tests.find do |boating_test|
      # the test name matches and the student's name matches
      (boating_test.test_name == test_name) && (boating_test.student.full_name == student_name)
    end

    if found_boating != nil
      found_boating.test_status = "FAILED"
    else
      nil
    end
  end
end
