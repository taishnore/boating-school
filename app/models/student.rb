class Student

  attr_reader :first_name, :last_name

  @@all = []

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name = last_name
    @@all << self
  end

  def self.all
    @@all
  end

  def full_name
    "#{self.first_name} #{self.last_name}"
  end

  def self.full_names
    self.all.map { |student| "#{student.first_name} #{student.last_name}" }
  end

  def add_boating_test(instructor, test_name, test_status)
    BoatingTest.new(self, test_name, test_status, instructor)
  end

  def self.find_student(full_name)
    name_split = full_name.split
    self.all.find do |student|
      student.first_name == name_split[0] && student.last_name == name_split[1]
    end
  end

end
