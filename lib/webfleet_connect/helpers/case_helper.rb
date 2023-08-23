module WebfleetConnect::Helpers::CaseHelper
  def pascal_to_snake(str)
    str.gsub(/([a-z])([A-Z])/, '\1_\2').downcase
  end

  def pascal_to_cammel(str)
    str[0].downcase + str[1..]
  end

  def snake_to_pascal(str)
    str.split('_').map(&:capitalize).join('')
  end

  def snake_to_cammel(str)
    pascal = snake_to_pascal(str)
    pascal_to_cammel(pascal)
  end
end
