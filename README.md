# rpn_calc
Very Minimal Ruby RPN Calculator 

Harness the power of RPN notation. Woot.

```ruby
irb(main):005:0> rpn_calc [1,2,3,:+,:+]
=> 6
irb(main):006:0> rpn_calc [1,2,:+,3,4,:+,:*]
=> 21
```

If you are feeling silly...

```ruby
irb(main):007:0> rpn_calc [ [1,2,3], "\t", :join ]
=> "1\t2\t3"
```
