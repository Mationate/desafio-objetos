class Student
  attr_accessor :name, :grade
  def initialize(name, grade)
    @name = name
    @grade = grade
  end
end
names = %w(Alicia Javier Camila Francisco Pablo Josefina)

students = []
names.each_with_index do |name, i|
  students.push(Student.new(name, i + 1))
end

grades = students.map do |student|
  "#{student.name}: #{student.grade}"
end
puts grades
