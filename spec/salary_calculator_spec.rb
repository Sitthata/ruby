require_relative '../solution/salary_calculator'
require 'date'

describe "salary calculator given start and end date the function should return salary according to that month's budget" do
  it 'given start date 02/07 and end date 04/07 should return 3 day worth of salary equal to 3 baht' do
    start_date = Date.new(2025, 7, 2) # year, month, day
    end_date = Date.new(2025, 7, 4)
    result = end_date.day - start_date.day + 1

    expect(calculate_salary(start_date, end_date)).to eq(result)
  end

  it 'given start date 04/07 and end date 02/07 should return error พ่อง because start date come after end date' do
    start_date = Date.new(2025, 7, 4) # year, month, day
    end_date = Date.new(2025, 7, 2)

    expect { calculate_salary start_date, end_date }.to raise_error(ArgumentError, 'พ่อง')
  end

  it 'given start date 20/06 and 04/07 end date with duration 11 day of month 06 and 4 days of month 07' do
    start_date = Date.new(2025, 6, 20) # year, month, day
    end_date = Date.new(2025, 7, 4)
    result = 1100 + 4 # month 6 got budget

    expect(calculate_salary(start_date, end_date)).to eq(result)
  end

  it 'test full month' do
    start_date = Date.new(2025, 3, 10) # year, month, day
    end_date = Date.new(2025, 7, 2)
    result = 22 + 9100 + 2

    expect(calculate_salary(start_date, end_date)).to eq(result)
  end
end
