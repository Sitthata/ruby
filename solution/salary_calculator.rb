require 'date'

MONTH_DAILY_RATE = {
  3 => 1,
  4 => 100,
  5 => 100,
  6 => 100,
  7 => 1
}

def calculate_salary(start_date, end_date)
  raise ArgumentError, 'พ่อง' if end_date < start_date

  date_between = (start_date..end_date).to_a
  salary = 0

  date_between.each do |date|
    salary += MONTH_DAILY_RATE[date.month]
  end

  salary
end
