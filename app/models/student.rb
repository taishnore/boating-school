class Student

  attr_accessor :first_name, :last_name

  @@all = []

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name = last_name

    @@all << self
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def self.all
    @@all
  end

  def self.full_names
    # full_name_arr = []
    #
    # @@all.each do |student|
    #   full_name_arr << "#{student.first_name} #{student.last_name}"
    # end
    #
    # return full_name_arr
    @@all.map do |student|
      # student => Instance of Student
      # binding.pry
      student.full_name
    end
  end

  def add_boating_test(instructor, test_name, test_status)
    # binding.pry
    BoatingTest.new(self, test_name, test_status, instructor)
  end

  def self.find_student(full_name)

    # @@all.each do |student|
    #   student_full_name = "#{student.first_name} #{student.last_name}"
    #   if student_full_name == full_name
    #     return student
    #   end
    # end
    #
    # return nil
    @@all.find do |student|
      "#{student.first_name} #{student.last_name}" == full_name
    end
  end

  # my_student = Student.new("Prince", "Wilson")
end
