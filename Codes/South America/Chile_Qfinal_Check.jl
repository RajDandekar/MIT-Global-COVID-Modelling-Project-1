using MAT
using Plots
using Measures
using Flux
using DifferentialEquations
using DiffEqFlux
using LaTeXStrings
using Random
############### Chile##########
###########STAGE 1##########
vars = matread("C:/Users/Raj/Desktop/2.168/COVID-19-master_latest/COVID-19-master/csse_covid_19_data/csse_covid_19_daily_reports/Rise_Chile_Track.mat")

Random.seed!(50)

Infected = vars["Chile_Infected_All"]
Recovered = vars["Chile_Recovered_All"]
Dead= vars["Chile_Dead_All"]
Time = vars["Chile_Time"]

Infected = Infected - Recovered - Dead


ann = Chain(Dense(3,10,relu),  Dense(10,1))
p1,re = Flux.destructure(ann)
p2 = Float64[0.15, 0.013, 0.01]
p3 = [p1; p2]
ps = Flux.params(p3)

#D = load("CQfinal_QuarHeatmap_Chile_QSIR_Deadn.jld")
#γ_parameter = D["γ_parameter"]
#δ_parameter = D["δ_parameter"]


function QSIR(du, u, p, t)
    β = abs(p[52])
    γ = abs(p[53])
    δ = abs(p[54])
    #γ = abs(γ_parameter)
    #δ = abs(δ_parameter)
    un = [u[1]; u[2]; u[3]]
    NN1 = abs(re(p[1:51])(un)[1])
    du[1]=  - β*u[1]*(u[2])/u0[1]
    du[2] = β*u[1]*(u[2])/u0[1] - γ*u[2] - NN1*u[2]/u0[1]
    du[3] = γ*u[2] + δ*u[4]
    du[4] =  NN1*u[2]/u0[1] - δ*u[4]
end


u0 = Float64[19000000.0, 531, 6, 10]
tspan = (0, 72.0)
datasize = 72;



prob = ODEProblem(QSIR, u0, tspan, p3)
t = range(tspan[1],tspan[2],length=datasize)

sol = Array(concrete_solve(prob, Tsit5(),u0, p3, saveat=t))


function predict_adjoint() # Our 1-layer neural network
  Array(concrete_solve(prob,Tsit5(),u0,p3,saveat=t))
end


function loss_adjoint()
 prediction = predict_adjoint()
 loss = sum(abs2, log.(abs.(Infected[1:end])) .- log.(abs.(prediction[2, :] .+ prediction[4, :] ))) + (sum(abs2, log.(abs.(Recovered[1:end] + Dead[1:end]) ) .- log.(abs.(prediction[3, :] ))))
 #loss = sum(abs2, log.(abs.(Infected[1:end])) .- log.(abs.(prediction[2, :] .+ prediction[4,:])))
end

Loss = []
P1 = []
P2 = []
P3  =[]
anim = Animation()
datan = Iterators.repeated((), 60000)
opt = ADAM(0.01)
cb = function()
  #display(loss_adjoint())
  global Loss = append!(Loss, loss_adjoint())
  global P1 = append!(P1, p3[52])
  global P2 = append!(P2, p3[53])
  global P3 = append!(P3, p3)
end

cb()

Flux.train!(loss_adjoint, ps, datan, opt, cb = cb)


L = findmin(Loss)
idx = L[2]
idx1 = (idx-1)*54 +1
idx2 = idx*54
p3n = P3[idx1: idx2]

prediction = Array(concrete_solve(prob,Tsit5(),u0,p3n,saveat=t))

S_NN_all_loss = prediction[1, :]
I_NN_all_loss = prediction[2, :]
R_NN_all_loss = prediction[3, :]
T_NN_all_loss = prediction[4, :]

 Q_parameter = zeros(Float64, length(S_NN_all_loss), 1)

for i = 1:length(S_NN_all_loss)
  Q_parameter[i] = abs(re(p3n[1:51])([S_NN_all_loss[i],I_NN_all_loss[i], R_NN_all_loss[i]])[1])
end

pyplot()
Reff = abs(p3n[52]) ./ (abs(p3n[53]) .+ abs(p3n[54]) .+ Q_parameter/u0[1])
if minimum(Reff) >1
 Transition = datasize + 5
else
Transition = findall(x -> x <1, Reff)[1]
end

Q_Chile = ((Q_parameter[30] - Q_parameter[1]) /u0[1])



using JLD
save("QQFinal_QuarHeatmap_Chile_QSIR_Deadn_Stage2.jld", "Q_Chile", Q_Chile, "prediction", prediction, "Reff", Reff,"Q_parameter", Q_parameter, "Transition", Transition, "β_parameter", p3n[52],"γ_parameter", p3n[53],"δ_parameter", p3n[54], "S_NN_all_loss", S_NN_all_loss, "I_NN_all_loss", I_NN_all_loss, "R_NN_all_loss", R_NN_all_loss,"t", t, "Parameters", p3,"Parameters_copy", p3n, "Loss", Loss)

###########CLEAN PLOTS###########
D = load("QQFinal_QuarHeatmap_Chile_QSIR_Deadn_Stage2.jld")
prediction = D["prediction"]
Reff = D["Reff"]
Transition = D["Transition"]
Q_parameter = D["Q_parameter"]


bar(Infected',alpha=0.5,label="Data: Infected",color="red")
plot!(t, prediction[2, :] .+ prediction[4, :] , xaxis = "Days post 500 infected", label = "Prediction", legend = :topright, framestyle = :box, left_margin = 5mm, bottom_margin = 5mm, top_margin = 5mm,  grid = :off, color = :red, linewidth  = 4, foreground_color_legend = nothing, background_color_legend = nothing, yguidefontsize = 14, xguidefontsize = 14,  xtickfont = font(12, "TimesNewRoman"), ytickfont = font(12, "TimesNewRoman"), legendfontsize = 12)
bar!(Recovered' + Dead',alpha=0.5,xrotation=60,label="Data: Recovered", color="blue")
plot!(t, prediction[3, :], ylims = (-0.05*maximum(Recovered + Dead),1.5*maximum(Infected)), right_margin = 5mm, xaxis = "Days post 500 infected", label = "Prediction ", legend = :topleft, framestyle = :box, left_margin = 5mm, bottom_margin =5mm, top_margin = 5mm, grid = :off, color = :blue, linewidth  = 4, foreground_color_legend = nothing, background_color_legend = nothing,  yguidefontsize = 14, xguidefontsize = 14,  xtickfont = font(12, "TimesNewRoman"), ytickfont = font(12, "TimesNewRoman", legendfontsize = 1))

savefig("Clean_QQFinal_Quar_Stage2_Chile_1dn.pdf")

using LaTeXStrings

#plot([0, Transition[1]], [80, 80],fill=(0,:lightpink), markeralpha=0, label = "")
plot([0, datasize], [80, 80],fill=(0,:aliceblue), markeralpha=0, label = "")
scatter!(t[1:end], Reff[1:end], xlims = (0, datasize), ylims = (0.5, 1.5), xlabel = "Days post 500 infected", label = string("Covid spread parameter ", L"C_{p}"), legend = :topright, color = :black, framestyle = :box, grid =:off, foreground_color_legend = nothing, background_color_legend = nothing, yguidefontsize = 14, xguidefontsize = 14,  xtickfont = font(12, "TimesNewRoman"), ytickfont = font(12, "TimesNewRoman"), legendfontsize = 12, left_margin = 5mm, bottom_margin= 5mm)
f(x) = 1
plot!(f, xlims = (0,datasize), color = :blue, linewidth = 3, label = L"C_{p} = 1")

Plots.savefig("Clean_QQFinal_Quar_Stage2_Chile_2d.pdf")

#plot([0, Transition[1]], [80, 80],fill=(0,:lightpink), markeralpha=0, label = "")
plot([0, datasize], [80, 80],fill=(0,:aliceblue), markeralpha=0, label = "")
scatter!(t,Q_parameter/u0[1], xlims = (0, datasize+1), ylims = (0,1), xlabel = "Days post 500 infected", ylabel = "Q(t)", label = "Quarantine strength",color = :black, framestyle = :box, grid =:off, legend = :topleft, left_margin = 5mm, bottom_margin = 5mm, foreground_color_legend = nothing, background_color_legend = nothing,  yguidefontsize = 14, xguidefontsize = 14,  xtickfont = font(12, "TimesNewRoman"), ytickfont = font(12, "TimesNewRoman"), legendfontsize = 12)
plot!([1-0.01,1+0.01],[0.0, 1.0],lw=3,color=:green,label="Nationwide curfew imposed",linestyle = :dash)


Plots.savefig("Clean_QQFinal_Quar_Stage2_Chile_3dn.pdf")
