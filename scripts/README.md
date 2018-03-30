# Adding new problems

This Ruby script was created to facilitate the addition of new problems.

### Requirements

We use **Nokogiri** in order to parse the HTML pages and fetch the problem's statement.
If you don't have Nokogiri installed, just open your terminal and call:

    $ gem install nokogiri

### Usage

`$ ruby scripts/add_new_problem.rb problem_number`

The problem number must be specified with three digits, i.e 001, 015, 090, 210 etc.
