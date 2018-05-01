require_relative './spec_helper.rb'
require_relative '../two_step_and_repeat.rb'
require 'timeout'
require 'rspec-command'
require 'io/console'
require 'pry'

# begin
#   Timeout.timeout(2) do
#     first_steps
#   end
# rescue Timeout::Error
# end
# puts ""
# begin
#   Timeout.timeout(4.5) do
#     a_few_more_steps
#   end
# rescue Timeout::Error
# end

def sleep *; end

describe "first_steps" do
  it 'displays the four correct dance steps' do
    expectation = expect {
      begin
        Timeout.timeout(0.00000000000000000001) do
          first_steps
        end
      rescue Timeout::Error
      end
    }
    expectation.to output(/Right foot back/).to_stdout, 'Expected "Right foot back" to be output on the command line'
    expectation.to output(/Left foot back/).to_stdout, 'Expected "Left foot back" to be output on the command line'
    expectation.to output(/Stop/).to_stdout, 'Expected "Stop" to be output on the command line'
  end
end

describe "a_few_more_steps" do


  it 'displays the eight correct dance steps' do
    expectation = expect {
      begin
        Timeout.timeout(0.00000000000000000000001) do
          a_few_more_steps
        end
        rescue Timeout::Error
      end
    }

    expectation.to output(/Right foot back/).to_stdout, 'Expected "Right foot back" to be output on the command line'
    expectation.to output(/Left foot back/).to_stdout, 'Expected "Left foot back" to be output on the command line'
    expectation.to output(/Stop/).to_stdout, 'Expected "Stop" to be output on the command line'
    expectation.to output(/Right foot steps right and back/).to_stdout, 'Expected "Right foot steps right and back" to be output on the command line'
    expectation.to output(/Left foot crosses over right/).to_stdout, 'Expected "Left foot crosses over right" to be output on the command line'
    expectation.to output(/Right foot steps right/).to_stdout, 'Expected "Right foot steps right" to be output on the command line'
    expectation.to output(/Turn/).to_stdout, 'Expected "Turn" to be output on the command line'
  end


end

describe "how_many_steps?" do
  it 'counts the number of steps' do
    expectation = expect {
      begin
        Timeout.timeout(0.00000000000000000000001) do
          how_many_steps?
        end
        rescue Timeout::Error
      end
    }
    expectation.to output(/Left/).to_stdout, 'Expected "Left" to be output on the command line'
    expectation.to output(/Right/).to_stdout, 'Expected "Right" to be output on the command line'
    expectation.to output(/1\nRight\n2\nLeft/).to_stdout, 'Expected `steps` to increment in the loop and be output in the terminal'
    expectation.to output(/2/).to_stdout, 'Expected `steps` to increment in the loop to be output on the command line'
    expectation.to output(/3/).to_stdout, 'Expected `steps` to increment in the loop to be output on the command line'
    expectation.to output(/4/).to_stdout, 'Expected `steps` to increment in the loop to be output on the command line'
    expectation.to output(/5/).to_stdout, 'Expected `steps` to increment in the loop to be output on the command line'
  end

end

describe "break_dance" do
  it 'counts the number of steps' do
    expectation = expect {
      begin
        Timeout.timeout(0.00000000000000000000001) do
          break_dance
        end
        rescue Timeout::Error
      end
    }
    expectation.to output(/Left/).to_stdout, 'Expected "Left" to be output on the command line'
    expectation.to output(/Right/).to_stdout, 'Expected "Right" to be output on the command line'
    expectation.to output(/1\nRight\n2\nLeft/).to_stdout, 'Expected `steps` to increment in the loop and be output in the terminal'
    expectation.to output(/2/).to_stdout, 'Expected `steps` to increment in the loop to be output on the command line'
    expectation.to output(/3/).to_stdout, 'Expected `steps` to increment in the loop to be output on the command line'
    expectation.to output(/4/).to_stdout, 'Expected `steps` to increment in the loop to be output on the command line'
    expectation.not_to output(/7/).to_stdout, 'Expected `steps` to increment until 7, then stop'
  end
end
