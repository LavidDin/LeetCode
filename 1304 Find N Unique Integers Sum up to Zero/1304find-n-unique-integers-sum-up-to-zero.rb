def sum_zero(n)
  a = 2..n
  a.to_a << -a.sum
end
