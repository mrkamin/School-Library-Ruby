class Nameable
  def correct_name
    raise NotImplementedError, "#{self.class} has not implemented metohd '#{__method__}'"
  end
end
