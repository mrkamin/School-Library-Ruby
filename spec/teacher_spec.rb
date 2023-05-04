require_relative '../teacher'

describe 'Teacher object' do
  @specialization = 'Programming'
  teacher = Teacher.new(32, 'Rafi', true)

  context 'create an instance of teacher class' do
    it 'Teacher object' do
      expect(teacher.class) == Teacher
    end
  end

  context 'create an instance of Teacher specialization' do
    it 'Teacher' do
      expect(@specialization) == 'Software'
    end
  end

  context 'Teacher can us serv' do
    it 'can use service?' do
      expect(teacher.can_use_services?) == true
    end
  end
end

describe 'Teacher' do
  before :each do
    @teacher = Teacher.new true, 23, 'Henschel'
  end
  describe '#new' do
    it 'takes three parameters and returns a Teacher object' do
      expect(@teacher).to be_an_instance_of Teacher
    end
  end
  describe '#age' do
    it 'returns the correct age' do
      expect(@teacher.age).to eq(23)
    end
  end
  describe '#name' do
    it 'returns the correct name' do
      expect(@teacher.name).to eq('Henschel')
    end
  end
  describe '#parent_permission' do
    it 'returns the correct parent permission' do
      expect(@teacher.parent_permission).to eq(true)
    end
  end
end
