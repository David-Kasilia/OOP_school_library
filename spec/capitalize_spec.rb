require_relative '../decorator/capitalize_people_name_decorator'

describe CapitalizeDecorator do
    context 'Unit Test For Classroom Class' do
        before(:context) do
            @capitalize = CapitalizeDecorator.new('David')
        end
        it 'Creates a new instance' do
            expect(@capitalize).to be_an_instance_of(CapitalizeDecorator)
        end
    end
end