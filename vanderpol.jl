using OrdinaryDiffEq, Plots

function vanderpol(t,u,du)
    mu = 5.0
    du[1] = u[2]
    du[2] = mu * (1-u[1]^2) * u[2] - u[1]
end
u0 = [2.0; 0.0]
tspan = (0.0,100.0)
prob = ODEProblem(vanderpol, u0, tspan)
sol = solve(prob,Tsit5())
plot(sol)

