ShoesCalculator
===============

A calculator written in Ruby using the Shoes graphical API

# INSTALL

* Get a copy of Shoes running, resources online at:

> https://github.com/shoes/shoes/wiki/Building-Shoes

> http://shoesrb.com/manual/Installing.html

I had to add the following line to my ~/.bashrc to get this running on OSX:

```
PATH=/Applications/Shoes.app/Contents/MacOS:$PATH
```

* Fork your own copy of this exercise and clone it

* Run shoes with the following command, from the directory you just cloned into

```
shoes calculator.rb
```

# TODO

Over to you. Work through the following improvements and see if you can figure
out how to achieve them. Each time you make a change, commit and push your code
to your GitHub account.

1. Experiment with the user interface, changing colours, layouts,
backgrounds and gradients (don't spend all day on this though)
2. Fix the layout so that the numbers run from 0-9 in rows, e.g 7-8-9
3. Implement a cancel entry (C) button that clears the input
4. Implement other scientific calculator functions:
  * power of two
  * square root
  * log base 2
5. Refactor your code. Where might we use a case statement to simplify our solution?
6. See if you can change the label of the operator buttons to use the
mathematical division label, whilst keeping division function working.
7. Fix the problem where the inputs are treated as integers, not floats, so that
we can get correct results. See if you can have the input keep its integer values.
Hint - ask us for help!

# Homework

Using Shoes or a text-based terminal application, create a trip calculator.
Ask the user (politely) for four inputs:

* Distance – how far will you drive?
* MPG – what is the fuel efficiency of the car?
* £/PG – how much does petrol cost per gallon?
* Speed – how fast will you drive?

Your output is a string: “Your trip will take 3.5 hours and cost £255.33.”

For every 1 MPH over 60 MPH, reduce the the MPG by 2 MPG. (i.e. a car that
normally gets 30 mpg would only get 28 mpg if its speed were 61 mph. Handle the
case that this value gets below zero).

# Homework Extensions

Bonus points for creating another calculator or amending your calculator with
the following features:

* Mortgage calculator: Calculate the monthly payment when given the other variables as input.
* BMI: Calculate the BMI when given the height and weight.

# Submission

Once you're done, submit a pull request so that I can review your work.
