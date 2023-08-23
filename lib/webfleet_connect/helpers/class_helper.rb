module WebfleetConnect::Helpers::ClassHelper
  def class_name
    self.class.to_s.split('::').last
  end
end
