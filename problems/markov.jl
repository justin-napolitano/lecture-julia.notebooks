function mc_sample_path(P; init = 1, sample_size = 1000)

    d = Categorical([0.5, 0.3, 0.2]) # 3 discrete states
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

d = [0,.5,1]
test = rand(d, 20) 

display(test)
#P = [0.4 0.6; 0.2 0.8]
#X = mc_sample_path(P, sample_size = 100_000); # note 100_000 = 100000
#μ_1 = count(X .== 1)/length(X) # .== broadcasts test for equality. Could use mean(X .== 1)