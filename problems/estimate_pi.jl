# Number of iterations
n = 1000000
#counter variable
count = 0
for i in 1:n # for i in the range of 1 to n
    global count
    #rand(2) Returns a two element vector.  
    #Can be read as let u be equal to the first index of the vector and let v be equal to the second
    u, v = rand(2)
    
    d = sqrt((u - 0.5)^2 + (v - 0.5)^2)  # distance from middle of square
    if d < 0.5
        count += 1
    end
end

area_estimate = count / n

print(area_estimate * 4)  # dividing by radius**2
