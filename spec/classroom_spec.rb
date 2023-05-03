require_relative '../classroom'

describe 'Classroom' do
    before :each do
        @label = 200
        @students = []
    end

    classroom = Classroom.new(@label)
    context 'create an instance of classroom' do
        it 'Classroom object' do
            expect(Classroom.class) == Classroom
            end
        end
        context 'create a students list' do 
            it 'Classroom list' do
                expect(Classroom.instance_methods(false).include?(:add_student)).to eq true
            end
        end
    end
    
