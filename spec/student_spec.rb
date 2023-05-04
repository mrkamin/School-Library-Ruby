require_relative '../student'
require_relative '../classroom'

describe 'Student' do
  before :each do
    @label = 300
    @age = 35
    @name = 'Mohammad'
    @parent_permission = true
    @student = Student.new(@label, @age, @name, @parent_permission)
    @classroom = Classroom.new(@label)
  end
  it 'Paly hooky' do
    expect(@student.paly_hooky).to eq '¯(ツ)/¯'
  end
  it 'Classroom' do
    expect(@classroom).to be_an_instance_of Classroom
  end
end

describe 'Student' do
  before :each do
    @student = Student.new 0, 17, 'Milton', true
  end
  describe "#new" do
    it "takes three parameters and returns a Student object" do
      expect(@student).to be_an_instance_of Student
    end
  end
  describe "#age" do
    it "returns the correct age" do
      expect(@student.age).to eq(17)
    end
  end
  describe "#name" do
    it "returns the correct name" do
      expect(@student.name).to eq('Milton')
    end
  end
  describe "#parent_permission" do
    it "returns the correct parent permission" do
      expect(@student.parent_permission).to eq(true)
    end
  end
end
