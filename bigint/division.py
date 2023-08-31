# divisor length is t
# dividend length is n

# quotient will be n-t
# remainder will be t
import math

x_in = 721948327
y_in = 84461

# for 32 bit replace as defined
x = [int(d) for d in str(x_in) ][::-1] 
y = [int(d) for d in str(y_in) ][::-1] 


n = len(str(x_in))
t = len(str(y_in)) - 1
b = 10

q = [0] * (n-t)
r = [0] * (t) 

for j in range(0,n-t):
    q[j] = 0

while x_in >= y_in * (b ** (n-t)):
    q[n-t] = q[n-t] + 1
    x_in = x_in - (y_in * (b ** (n-t)))
    x = [int(d) for d in str(x_in) ][::-1]

for i in range(n-1,t,-1):
    if x[i] == y[t]:
        q[i-t-1] = b - 1
    else:
        q[i-t-1] = (x[i] * b + x[i-1]) // y[t]

    while q[i-t-1] * (y[t] * b + y[t-1]) > (x[i] * (b ** 2) + x[i-1] * b + x[i-2]):
        q[i-t-1] = q[i-t-1] - 1

    x_in = x_in - q[i-t-1]*y_in*b**(i-t-1)
    x = [int(d) for d in str(x_in) ][::-1]

    if x_in < 0:
        x_in = x_in + y_in * b **(i-t-1)
        q[i-t-1] = q[i-t-1] - 1
        x = [int(d) for d in str(x_in) ][::-1]

    print(x)
    print(q)
        




        





