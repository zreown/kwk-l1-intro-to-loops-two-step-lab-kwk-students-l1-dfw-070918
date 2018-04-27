require_relative './spec_helper.rb'
require_relative '../two_step_and_repeat.rb'
require 'timeout'
require 'io/console'
require 'pry'

describe "first_steps" do

  it 'puts the right messages ' do
    begin
      status = Timeout.timeout(4) do
        first_steps
      end
    rescue Timeout::Error
      puts 'Yee-haw!'
      binding.pry
      $stdout.each_line { |input| puts "I am from $stdin! '#{input.inspect}'" }


    end

    expect(output).to include 'Right foot back'
    expect(output).to include 'Left foot back'

  end

end

describe "a_few_more_steps" do


end

describe "how_many_steps?" do


end

describe "break_dance" do

end
