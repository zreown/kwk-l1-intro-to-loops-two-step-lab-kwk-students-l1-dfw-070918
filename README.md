# Two Step and Repeat

This is a group lab, so make sure you are working in a group of 2-4 students

Have you ever seen a Two Step?  It is _not_ two steps! It is at least
ten... maybe even twenty or thirty steps. And that's only if we stop dancing!

The trick to learning something like the Two Step along with most complex dances,
is that a complicated dance is actually just made up of short, simple moves,
repeating over and over, in a _loop_. Once you learn the simple moves,
all you need to do is loop them together.

Let's learn some Two Step! We can use Ruby loops to help us out.

## Part 1: The First Steps

In `two_step_and_repeat.rb`, Implement the `first_steps` method. This method
should include a loop that outputs the following in your terminal endlessly,
until you press `ctrl+c`.

```ruby
puts "Right foot back"
sleep(0.5)
puts "Left foot back"
sleep(0.5)
puts "Right foot back"
sleep(0.5)
puts "Stop"
sleep(1)
```

If you haven't seen `sleep(0.5)` before, that's okay.  This is a built in with
Ruby and tells a program to stop for a moment. 0.5 is equal to one half second
pause. The last `sleep` is set to pause for 1 second, giving us a moment to
catch our breath before the loop starts over.

To see how this looks in your terminal, you can load up the
`two_step_and_repeat.rb` file in IRB by entering the following in your terminal:

```bash
irb -r ./two_step_and_repeat.rb
```

Once you're in IRB, type in `first_steps` to start the loop. Use `ctrl+c` to get out
and `ctrl+d` to close IRB.  You'll have to run the line above each time your update
your methods in order to see them in action.

## Part 2: A Few More Steps

Wait... we're only going backwards! We need to at least _turn_. In the second
Ruby method, we will expand our dance moves.  Implement `a_few_more_steps` with a
loop that includes all the steps from `first_steps`, but immediately after,
outputs the following separated by `sleep(0.5)`:

* "Right foot steps right and back"
* "Left foot crosses over right"
* "Right foot steps right"

Now we're moving... to the right! To finish this second set of moves, add one more
`puts`, "Turn", followed by `sleep(1)`.

## Part 3: Just How Many Steps Do We Need To Take?

Our dance moves are great, but how many steps are we making in these endless loops? Well, it turns out, we can count _in_ our loops using a variable.  Inside `how_many_steps`?, implement the following:

* Create a variable called `steps` and set it equal to zero
* Just below this variable, write a loop that does four things:
  1. Increases the value of `steps` by 1
  2. Outputs the value of `steps`
  3. If the value of `steps` is divisible by 2 (remember how to use the `%`?),
outputs 'Left', otherwise, it should output 'Right'
  3. Sleeps for 0.5 seconds

Make sure to take a look at the loop in your terminal to see if it is doing what you expect. This may require a number of.. steps.. so take your time and plan it out.

## Part 4: Break Dancing

Okay, I think we need a break, and so do our loops. While infinite loops are
cool, they aren't very useful because _we_ have to tell them to stop
looping.  It is much better if our loops have some sort of conditional that, if
true, exits the loop.  

To do this, we can use the `break` command inside our loops. Using `break` stops
everything in the loop block _immediately_. Anything below it will not be read:

```ruby
# The following will only run until it hits 'break' on the first loop
loop do
  puts 'hello' # puts hello once
  break
  puts 'goodbye' # puts never fires
end
```

For this last method, we're going to be reusing some of our previous work, adding
in a `break` to stop after a certain point.

  1. Copy and paste your loop from the previous method into `break_dance`
  2. At the bottom of the loop, add the following conditional: if `steps` is
  equal to 6, _break_.

If you've got the solution, this loop will display the following, then stop:

```ruby
1
Right
2
Left
3
Right
4
Left
5
Right
6
Left
```

## Summary

* Loops can be very useful for repeating steps in our code
* Loops will go on forever unless there is a way to tell them to stop
* We can write conditionals in our loops so that we can stop a loop once the
conditional is found to be true

That's enough Two Step for now, but feel free to create your own loops, if you
want! Try more complex patterns.  For instance, you can try putting loops inside
loops. Usually dances like the Two Step have a few beginning steps, followed by
repetition of the same move two or three times, then a return to the beginning
steps, repeating four or five times.  This could be written as a loop that only
fires _three_ times inside a loop that fires _five_ times.
