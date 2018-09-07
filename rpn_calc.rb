# RPN Calculator.
# Symbols send arg2 to arg1.
# Works as expected for arithmetic with :+, :-, :/, :*
def rpn_calc args
  acc = []
  for arg in args
    case arg
    when Symbol
      v2 = acc.pop
      v1 = acc.pop
      acc.push(v1.send arg, v2)
    else
      acc.push arg
    end
  end
  raise if acc.length != 1
  acc.first
end
