# let k divide x and then u.k = x take the modulus n on both sides

# since n is prime that k^-1 exist in modulo n and that can be found with extended euclidean algorithm. 

x = 973331337975863558562589385978725224439719057105773700776051658517982029649199500724566890936229616947911429024503                      
y = 973331337975863558562589385978725224439719057105773700776051658517982029649199500724566890936229616947911429024503                      
# print("x * y")
# print(x * y)

m = 72639
R = 10**5
b = 10
# number we want to find montgomery reduction for
T = x * y
n = 5

def gcd(a,b):
    if b == 0: 
        return a 
    else:
        return gcd(b, a % b) 

def extended_gcd(a, b):
    if a == 0:
        return b, 0, 1
 
    gcd, x1, y1 = extended_gcd(b % a, a)
 
    x = y1 - (b//a) * x1
    y = x1
 
    return gcd, x, y

m_dash = extended_gcd(m,R)
# print(m_dash)
print(m_dash)

m_dash = (-m_dash[1]) % 10


for i in range(0,len(str(m))):
    A = [int(t) for t in str(T)][::-1]
    u = A[i] * m_dash % b
    # print(u)
    T = T + u * m * (b**i)
    # print(u * m * (b ** i))
    # print(T)

T = T / R



# multiplication

xin = [int(d) for d in "0" + str(x)][::-1]
yin = [int(d) for d in "0" + str(y)][::-1]


Ain = 0
for i in range(0, len(str(m))):
    A = [int(x) for x in str(Ain)][::-1]
    u = A[0] + (xin[i] * yin[0] * m_dash) % b
    Ain = (Ain + xin[i]*y + u * m) // b 
    # print(Ain)
