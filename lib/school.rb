# code here!
class School
  attr_reader :name, :roster, :school
  def initialize (name, roster = {})
    @name = name 
    @roster = Hash.new {|h, k| h[k] = []}
  end 
  
  def add_student (student_name, grade)
    
    @roster[grade] << student_name
  end
  
  def grade(grade)
    @grade = @roster[grade]
    @grade
  end
  
  def sort 
    @roster.each  do |k, v|
      (@roster[k]).sort!
      v.sort!
    end
  
  end
end