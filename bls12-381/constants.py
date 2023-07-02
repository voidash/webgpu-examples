import functools
p = 0x1a0111ea397fe69a4b1ba7b6434bacd764774b84f38512bf6730d2a0f6b0f6241eabfffeb153ffffb9feffffffffaaab

a = functools.reduce(lambda a, b: (a << 64)+b,
                     [
    0x669e_44a6_8798_2a79,
    0xa0d9_8a50_37b5_ed71,
    0x0ad5_822f_2861_a854,
    0x96c5_2bf1_ebf7_5781,
    0x87f8_41f0_5c0c_658c,
    0x08a6_e795_afc5_283e
][::-1], 0)

# a = functools.reduce(lambda a, b: (a << 64)+b,
#                      [0x3934_42cc_b58b_b327,
#                       0x1092_685f_3bd5_47e3,
#                       0x3382_252c_ab6a_c4c9,
#                       0xf946_94cb_7688_7f55,
#                       0x4b21_5e90_93a5_e071,
#                       0x0d56_e30f_34f5_f853,
#                       ][::-1], 0)

# a = (p+1)//4

# a = p ** (2)

alen = a.bit_length()
modulus = []
print(a)
print(hex(a))

base = 32
for i in range(alen, 0, -base):
    print(hex(int(bin(a)[2:][i-base if (i-base) > 0 else 0: i], base=2))+",")


print(p % 4)
