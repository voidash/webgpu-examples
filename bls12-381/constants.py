p = 0x1a0111ea397fe69a4b1ba7b6434bacd764774b84f38512bf6730d2a0f6b0f6241eabfffeb153ffffb9feffffffffaaab

a = (2 ** (384*3)) % p
alen = a.bit_length()
modulus = []
print(a)
print(alen)

base = 32 
for i in range(alen, 0, -base):
    print(hex(int(bin(a)[2:][i-base if (i-base) > 0 else 0: i], base=2)))
