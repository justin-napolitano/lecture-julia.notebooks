using QuadGK

f(x) = x^8 # The Function

value, accuracy = quadgk(f, 0.0, 1.0)

print("value:",value)
print("/nAccuracy:",accuracy)
