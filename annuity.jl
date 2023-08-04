r = (1 + 0.06)^(1/12) - 1
n = 20 * 12

k = sum((1+r)^(i-1) for i in 1:n)

ratio = k / (1 + k * r)

println(ratio)
