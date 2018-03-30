#!/usr/bin/env ruby
require 'open-uri'
require 'nokogiri'

def valid_input?(n)
  unless n
    puts 'Specify a problem, like 001, 099, etc'
    return false
  end

  if n.length != 3
    puts 'Directory name must have 3 digits'
    puts 'Like so: 001, 015, 050, 110, etc'
    return false
  end

  true
end

def parse_euler_doc(n)
  base_url = 'https://projecteuler.net/problem'
  url = "#{base_url}=#{n}"
  Nokogiri::HTML(open(url))
end

def valid_url?(n)
  doc = parse_euler_doc(n)
  if doc.css('.problem_content').empty?
    puts 'This is not a valid Project Euler problem.'
    puts 'Check https://projecteuler.net/archives'
    return false
  end

  true
end

def fetch_content(n)
  content = "https://projecteuler.net/problem=#{n}\n\n"

  doc = parse_euler_doc(n)
  doc.css('.problem_content').each do |node|
    content << "#{node.content}\n"
  end

  content
end

def create_dir(problem_number)
  base_dir = "#{Dir.pwd}/src"
  problem_dir = "#{base_dir}/#{problem_number}"

  if Dir.exist?(problem_dir)
    puts 'This problem already has a directory.'
    puts "Check #{base_dir}/#{problem_number}"
    exit
  end

  Dir.mkdir(problem_dir)
  puts "Directory for problem#{problem_number} created"
end

def create_readme_file(problem_number)
  base_dir = "#{Dir.pwd}/src"
  filename = "#{base_dir}/#{problem_number}/README.md"

  File.open(filename, 'w') do |f|
    f.write(fetch_content(problem_number))
  end

  puts "README file for problem#{problem_number} created"
end

# Main

problem_number = ARGV[0]
exit unless valid_input?(problem_number)
exit unless valid_url?(problem_number)
create_dir(problem_number)
create_readme_file(problem_number)
