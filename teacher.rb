require './person'

class Teacher < Person
  def initialize(age, specialization, _name = 'Unknown', _parent_permission: true)
    super(age, _name = 'Unknown', _parent_permission = true)
    @specialization = specialization
  end

  def can_use_services?
    true
  end
end