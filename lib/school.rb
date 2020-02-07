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
    @roster[grade]
  end
  
  def sort 
    @roster.values.sort
  end
end