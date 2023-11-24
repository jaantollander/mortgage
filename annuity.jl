using Plots

r_ys = 0.00:0.001:0.10
n_ys = 5:5:25
plt = plot(; xticks=0:0.01:0.1)
for n_y in n_ys
    y = []
    for r_y in r_ys
        r = (1 + r_y)^(1/12) - 1
        n = n_y * 12

        k = sum((1+r)^(i-1) for i in 1:n)
        m = k / (1 + k * r)

        #push!(y, m / n)
        push!(y, n / m)
    end
    plot!(plt, r_ys, y; label="n=$(n_y)")
end

savefig(plt, "ratios_inverse.svg")
