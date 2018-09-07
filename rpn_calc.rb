# RPN Calculator.
# Works as expected for arithmetic with :+, :-, :/, :*
def rpn_calc args
  result = args.each_with_object [] do |arg, acc|
    acc << if arg.instance_of? Symbol
      v2 = acc.pop
      v1 = acc.pop
      raise 'Invalid computation. v2=#{v2}' if not v1
      v1.public_send arg, v2
    else
      arg
    end
  end
  raise 'Invalid computation. result=#{result}' if result.length != 1
  result.first
end
