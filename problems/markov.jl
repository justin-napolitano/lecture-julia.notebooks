
using LinearAlgebra, Statistics
using Distributions, Plots, Printf, QuantEcon, Random

function mc_sample_path(P; init = 1, sample_size = 1000)


    @assert size(P)[1] == size(P)[2] # square required
    N = size(P)[1] # should be square

    # create vector of discrete RVs for each row
    dists = [Categorical(P[i, :]) for i in 1:N]

    # setup the simulation
    X = fill(0, sample_size) # allocate memory, or zeros(Int64, sample_size)
    X[1] = init # set the initial state

    for t in 2:sample_size
        dist = dists[X[t-1]] # get discrete RV from last state's transition distribution
        X[t] = rand(dist) # draw new value
    end
    return X
end

function hard_way() 
    P = [0.4 0.6; 0.2 0.8]
    X = mc_sample_path(P, sample_size = 100_000); # note 100_000 = 100000
    μ_1 = count(X .== 1)/length(X) # .== broadcasts test for equality. Could use mean(X .== 1)
end



function easy_way()
    P = [0.4 0.6; 0.2 0.8];
    mc = MarkovChain(P)
    X = simulate(mc, 100_000);
    μ_2 = count(X .== 1)/length(X) # or mean(x -> x == 1, X)
end

easy_way()