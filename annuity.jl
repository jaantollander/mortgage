y = []
r_ys = 0.00:0.001:0.06
for r_y in r_ys
    r = (1 + r_y)^(1/12) - 1
    n = 20 * 12

    k = sum((1+r)^(i-1) for i in 1:n)
    m = k / (1 + k * r)

    push!(y, m / n)
end

using Plots
plt = plot(r_ys, y)
savefig(plt, "ratios.svg")
