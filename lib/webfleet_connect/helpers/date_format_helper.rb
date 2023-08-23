module WebfleetConnect::Helpers::DateFormatHelper
  def to_de(datetime)
    datetime.strftime('%d.%m.%Y %H:%M:%S')
  end

  def to_en(datetime)
    datetime.strftime('%d/%m/%Y %H:%M:%S')
  end

  def to_nl
    datetime.strftime('%d-%m-%Y %H:%M:%S')
  end
end
