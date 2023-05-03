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
