def oddNumbers(l, r)
  l.odd? ? first = l : first = l + 1
  r.odd? ? last = r : last = r - 1
  (first..last).step(2).to_a
end

puts oddNumbers(4,10)
