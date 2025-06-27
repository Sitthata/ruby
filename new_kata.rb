require 'fileutils'

def main
  file_name = ARGV[0].to_s

  if file_name.empty?
    puts 'enter a filename you idiot'
    return
  end

  spec_name = "#{file_name}_spec.rb"
  current_dir = Dir.pwd

  solution_path = File.join(current_dir, 'solution', "#{file_name}.rb")
  spec_path = File.join(current_dir, 'spec', spec_name)
  run_test_path = File.join(current_dir, 'run_test.sh')

  FileUtils.mkdir_p(File.dirname(solution_path))
  FileUtils.mkdir_p(File.dirname(spec_path))

  File.open(solution_path, 'w') do |file|
    file.puts "# Solution for #{file_name}"
  end

  File.open(spec_path, 'w') do |file|
    file.puts "# Test file for #{file_name}"
    file.puts "require_relative '../solution/#{file_name}.rb'

describe 'test' do
  it 'test' do
    expect(1 + 1).to eq 2
  end
end"
  end

  File.open(run_test_path, 'w') do |file|
    file.puts <<~BASH
      TEST_DIR="./spec"
      TEST_FILE="#{file_name}_spec"

      rspec "$TEST_DIR/$TEST_FILE.rb"
    BASH
  end

  puts "Created solution file: #{solution_path}"
  puts "Created spec file: #{spec_path}"
end

main
