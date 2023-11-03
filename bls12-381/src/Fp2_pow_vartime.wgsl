

struct Fp2 {
        c0: u32,
        c1: u32,
}

fn Fp2_pow_vartime(fp2: Fp2 , by: array<u32,12>) {
    var res = 1u;


    res = Fp2_square(res);
    if (by[11] >> 63 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[11] >> 62 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[11] >> 61 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[11] >> 60 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[11] >> 59 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[11] >> 58 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[11] >> 57 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[11] >> 56 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[11] >> 55 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[11] >> 54 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[11] >> 53 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[11] >> 52 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[11] >> 51 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[11] >> 50 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[11] >> 49 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[11] >> 48 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[11] >> 47 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[11] >> 46 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[11] >> 45 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[11] >> 44 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[11] >> 43 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[11] >> 42 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[11] >> 41 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[11] >> 40 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[11] >> 39 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[11] >> 38 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[11] >> 37 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[11] >> 36 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[11] >> 35 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[11] >> 34 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[11] >> 33 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[11] >> 32 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[11] >> 31 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[11] >> 30 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[11] >> 29 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[11] >> 28 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[11] >> 27 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[11] >> 26 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[11] >> 25 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[11] >> 24 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[11] >> 23 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[11] >> 22 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[11] >> 21 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[11] >> 20 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[11] >> 19 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[11] >> 18 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[11] >> 17 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[11] >> 16 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[11] >> 15 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[11] >> 14 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[11] >> 13 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[11] >> 12 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[11] >> 11 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[11] >> 10 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[11] >> 9 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[11] >> 8 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[11] >> 7 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[11] >> 6 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[11] >> 5 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[11] >> 4 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[11] >> 3 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[11] >> 2 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[11] >> 1 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[11] >> 0 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[10] >> 63 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[10] >> 62 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[10] >> 61 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[10] >> 60 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[10] >> 59 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[10] >> 58 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[10] >> 57 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[10] >> 56 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[10] >> 55 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[10] >> 54 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[10] >> 53 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[10] >> 52 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[10] >> 51 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[10] >> 50 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[10] >> 49 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[10] >> 48 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[10] >> 47 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[10] >> 46 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[10] >> 45 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[10] >> 44 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[10] >> 43 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[10] >> 42 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[10] >> 41 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[10] >> 40 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[10] >> 39 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[10] >> 38 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[10] >> 37 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[10] >> 36 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[10] >> 35 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[10] >> 34 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[10] >> 33 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[10] >> 32 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[10] >> 31 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[10] >> 30 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[10] >> 29 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[10] >> 28 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[10] >> 27 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[10] >> 26 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[10] >> 25 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[10] >> 24 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[10] >> 23 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[10] >> 22 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[10] >> 21 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[10] >> 20 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[10] >> 19 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[10] >> 18 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[10] >> 17 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[10] >> 16 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[10] >> 15 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[10] >> 14 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[10] >> 13 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[10] >> 12 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[10] >> 11 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[10] >> 10 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[10] >> 9 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[10] >> 8 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[10] >> 7 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[10] >> 6 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[10] >> 5 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[10] >> 4 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[10] >> 3 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[10] >> 2 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[10] >> 1 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[10] >> 0 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[9] >> 63 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[9] >> 62 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[9] >> 61 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[9] >> 60 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[9] >> 59 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[9] >> 58 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[9] >> 57 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[9] >> 56 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[9] >> 55 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[9] >> 54 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[9] >> 53 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[9] >> 52 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[9] >> 51 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[9] >> 50 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[9] >> 49 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[9] >> 48 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[9] >> 47 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[9] >> 46 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[9] >> 45 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[9] >> 44 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[9] >> 43 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[9] >> 42 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[9] >> 41 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[9] >> 40 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[9] >> 39 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[9] >> 38 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[9] >> 37 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[9] >> 36 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[9] >> 35 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[9] >> 34 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[9] >> 33 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[9] >> 32 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[9] >> 31 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[9] >> 30 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[9] >> 29 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[9] >> 28 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[9] >> 27 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[9] >> 26 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[9] >> 25 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[9] >> 24 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[9] >> 23 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[9] >> 22 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[9] >> 21 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[9] >> 20 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[9] >> 19 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[9] >> 18 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[9] >> 17 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[9] >> 16 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[9] >> 15 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[9] >> 14 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[9] >> 13 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[9] >> 12 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[9] >> 11 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[9] >> 10 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[9] >> 9 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[9] >> 8 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[9] >> 7 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[9] >> 6 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[9] >> 5 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[9] >> 4 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[9] >> 3 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[9] >> 2 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[9] >> 1 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[9] >> 0 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[8] >> 63 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[8] >> 62 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[8] >> 61 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[8] >> 60 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[8] >> 59 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[8] >> 58 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[8] >> 57 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[8] >> 56 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[8] >> 55 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[8] >> 54 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[8] >> 53 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[8] >> 52 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[8] >> 51 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[8] >> 50 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[8] >> 49 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[8] >> 48 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[8] >> 47 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[8] >> 46 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[8] >> 45 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[8] >> 44 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[8] >> 43 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[8] >> 42 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[8] >> 41 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[8] >> 40 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[8] >> 39 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[8] >> 38 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[8] >> 37 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[8] >> 36 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[8] >> 35 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[8] >> 34 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[8] >> 33 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[8] >> 32 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[8] >> 31 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[8] >> 30 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[8] >> 29 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[8] >> 28 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[8] >> 27 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[8] >> 26 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[8] >> 25 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[8] >> 24 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[8] >> 23 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[8] >> 22 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[8] >> 21 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[8] >> 20 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[8] >> 19 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[8] >> 18 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[8] >> 17 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[8] >> 16 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[8] >> 15 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[8] >> 14 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[8] >> 13 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[8] >> 12 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[8] >> 11 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[8] >> 10 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[8] >> 9 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[8] >> 8 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[8] >> 7 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[8] >> 6 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[8] >> 5 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[8] >> 4 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[8] >> 3 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[8] >> 2 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[8] >> 1 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[8] >> 0 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[7] >> 63 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[7] >> 62 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[7] >> 61 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[7] >> 60 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[7] >> 59 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[7] >> 58 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[7] >> 57 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[7] >> 56 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[7] >> 55 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[7] >> 54 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[7] >> 53 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[7] >> 52 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[7] >> 51 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[7] >> 50 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[7] >> 49 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[7] >> 48 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[7] >> 47 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[7] >> 46 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[7] >> 45 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[7] >> 44 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[7] >> 43 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[7] >> 42 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[7] >> 41 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[7] >> 40 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[7] >> 39 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[7] >> 38 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[7] >> 37 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[7] >> 36 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[7] >> 35 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[7] >> 34 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[7] >> 33 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[7] >> 32 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[7] >> 31 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[7] >> 30 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[7] >> 29 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[7] >> 28 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[7] >> 27 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[7] >> 26 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[7] >> 25 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[7] >> 24 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[7] >> 23 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[7] >> 22 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[7] >> 21 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[7] >> 20 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[7] >> 19 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[7] >> 18 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[7] >> 17 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[7] >> 16 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[7] >> 15 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[7] >> 14 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[7] >> 13 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[7] >> 12 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[7] >> 11 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[7] >> 10 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[7] >> 9 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[7] >> 8 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[7] >> 7 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[7] >> 6 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[7] >> 5 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[7] >> 4 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[7] >> 3 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[7] >> 2 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[7] >> 1 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[7] >> 0 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[6] >> 63 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[6] >> 62 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[6] >> 61 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[6] >> 60 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[6] >> 59 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[6] >> 58 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[6] >> 57 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[6] >> 56 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[6] >> 55 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[6] >> 54 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[6] >> 53 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[6] >> 52 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[6] >> 51 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[6] >> 50 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[6] >> 49 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[6] >> 48 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[6] >> 47 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[6] >> 46 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[6] >> 45 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[6] >> 44 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[6] >> 43 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[6] >> 42 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[6] >> 41 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[6] >> 40 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[6] >> 39 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[6] >> 38 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[6] >> 37 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[6] >> 36 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[6] >> 35 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[6] >> 34 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[6] >> 33 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[6] >> 32 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[6] >> 31 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[6] >> 30 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[6] >> 29 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[6] >> 28 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[6] >> 27 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[6] >> 26 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[6] >> 25 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[6] >> 24 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[6] >> 23 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[6] >> 22 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[6] >> 21 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[6] >> 20 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[6] >> 19 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[6] >> 18 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[6] >> 17 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[6] >> 16 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[6] >> 15 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[6] >> 14 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[6] >> 13 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[6] >> 12 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[6] >> 11 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[6] >> 10 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[6] >> 9 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[6] >> 8 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[6] >> 7 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[6] >> 6 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[6] >> 5 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[6] >> 4 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[6] >> 3 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[6] >> 2 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[6] >> 1 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[6] >> 0 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[5] >> 63 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[5] >> 62 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[5] >> 61 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[5] >> 60 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[5] >> 59 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[5] >> 58 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[5] >> 57 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[5] >> 56 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[5] >> 55 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[5] >> 54 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[5] >> 53 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[5] >> 52 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[5] >> 51 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[5] >> 50 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[5] >> 49 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[5] >> 48 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[5] >> 47 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[5] >> 46 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[5] >> 45 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[5] >> 44 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[5] >> 43 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[5] >> 42 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[5] >> 41 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[5] >> 40 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[5] >> 39 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[5] >> 38 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[5] >> 37 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[5] >> 36 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[5] >> 35 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[5] >> 34 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[5] >> 33 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[5] >> 32 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[5] >> 31 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[5] >> 30 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[5] >> 29 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[5] >> 28 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[5] >> 27 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[5] >> 26 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[5] >> 25 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[5] >> 24 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[5] >> 23 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[5] >> 22 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[5] >> 21 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[5] >> 20 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[5] >> 19 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[5] >> 18 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[5] >> 17 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[5] >> 16 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[5] >> 15 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[5] >> 14 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[5] >> 13 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[5] >> 12 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[5] >> 11 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[5] >> 10 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[5] >> 9 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[5] >> 8 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[5] >> 7 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[5] >> 6 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[5] >> 5 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[5] >> 4 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[5] >> 3 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[5] >> 2 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[5] >> 1 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[5] >> 0 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[4] >> 63 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[4] >> 62 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[4] >> 61 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[4] >> 60 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[4] >> 59 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[4] >> 58 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[4] >> 57 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[4] >> 56 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[4] >> 55 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[4] >> 54 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[4] >> 53 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[4] >> 52 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[4] >> 51 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[4] >> 50 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[4] >> 49 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[4] >> 48 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[4] >> 47 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[4] >> 46 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[4] >> 45 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[4] >> 44 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[4] >> 43 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[4] >> 42 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[4] >> 41 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[4] >> 40 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[4] >> 39 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[4] >> 38 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[4] >> 37 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[4] >> 36 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[4] >> 35 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[4] >> 34 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[4] >> 33 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[4] >> 32 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[4] >> 31 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[4] >> 30 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[4] >> 29 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[4] >> 28 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[4] >> 27 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[4] >> 26 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[4] >> 25 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[4] >> 24 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[4] >> 23 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[4] >> 22 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[4] >> 21 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[4] >> 20 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[4] >> 19 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[4] >> 18 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[4] >> 17 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[4] >> 16 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[4] >> 15 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[4] >> 14 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[4] >> 13 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[4] >> 12 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[4] >> 11 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[4] >> 10 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[4] >> 9 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[4] >> 8 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[4] >> 7 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[4] >> 6 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[4] >> 5 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[4] >> 4 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[4] >> 3 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[4] >> 2 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[4] >> 1 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[4] >> 0 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[3] >> 63 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[3] >> 62 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[3] >> 61 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[3] >> 60 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[3] >> 59 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[3] >> 58 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[3] >> 57 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[3] >> 56 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[3] >> 55 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[3] >> 54 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[3] >> 53 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[3] >> 52 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[3] >> 51 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[3] >> 50 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[3] >> 49 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[3] >> 48 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[3] >> 47 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[3] >> 46 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[3] >> 45 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[3] >> 44 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[3] >> 43 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[3] >> 42 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[3] >> 41 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[3] >> 40 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[3] >> 39 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[3] >> 38 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[3] >> 37 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[3] >> 36 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[3] >> 35 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[3] >> 34 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[3] >> 33 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[3] >> 32 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[3] >> 31 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[3] >> 30 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[3] >> 29 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[3] >> 28 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[3] >> 27 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[3] >> 26 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[3] >> 25 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[3] >> 24 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[3] >> 23 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[3] >> 22 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[3] >> 21 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[3] >> 20 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[3] >> 19 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[3] >> 18 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[3] >> 17 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[3] >> 16 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[3] >> 15 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[3] >> 14 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[3] >> 13 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[3] >> 12 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[3] >> 11 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[3] >> 10 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[3] >> 9 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[3] >> 8 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[3] >> 7 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[3] >> 6 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[3] >> 5 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[3] >> 4 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[3] >> 3 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[3] >> 2 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[3] >> 1 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[3] >> 0 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[2] >> 63 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[2] >> 62 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[2] >> 61 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[2] >> 60 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[2] >> 59 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[2] >> 58 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[2] >> 57 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[2] >> 56 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[2] >> 55 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[2] >> 54 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[2] >> 53 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[2] >> 52 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[2] >> 51 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[2] >> 50 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[2] >> 49 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[2] >> 48 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[2] >> 47 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[2] >> 46 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[2] >> 45 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[2] >> 44 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[2] >> 43 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[2] >> 42 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[2] >> 41 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[2] >> 40 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[2] >> 39 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[2] >> 38 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[2] >> 37 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[2] >> 36 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[2] >> 35 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[2] >> 34 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[2] >> 33 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[2] >> 32 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[2] >> 31 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[2] >> 30 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[2] >> 29 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[2] >> 28 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[2] >> 27 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[2] >> 26 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[2] >> 25 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[2] >> 24 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[2] >> 23 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[2] >> 22 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[2] >> 21 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[2] >> 20 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[2] >> 19 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[2] >> 18 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[2] >> 17 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[2] >> 16 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[2] >> 15 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[2] >> 14 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[2] >> 13 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[2] >> 12 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[2] >> 11 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[2] >> 10 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[2] >> 9 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[2] >> 8 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[2] >> 7 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[2] >> 6 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[2] >> 5 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[2] >> 4 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[2] >> 3 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[2] >> 2 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[2] >> 1 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[2] >> 0 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[1] >> 63 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[1] >> 62 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[1] >> 61 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[1] >> 60 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[1] >> 59 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[1] >> 58 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[1] >> 57 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[1] >> 56 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[1] >> 55 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[1] >> 54 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[1] >> 53 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[1] >> 52 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[1] >> 51 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[1] >> 50 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[1] >> 49 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[1] >> 48 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[1] >> 47 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[1] >> 46 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[1] >> 45 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[1] >> 44 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[1] >> 43 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[1] >> 42 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[1] >> 41 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[1] >> 40 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[1] >> 39 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[1] >> 38 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[1] >> 37 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[1] >> 36 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[1] >> 35 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[1] >> 34 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[1] >> 33 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[1] >> 32 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[1] >> 31 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[1] >> 30 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[1] >> 29 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[1] >> 28 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[1] >> 27 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[1] >> 26 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[1] >> 25 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[1] >> 24 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[1] >> 23 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[1] >> 22 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[1] >> 21 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[1] >> 20 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[1] >> 19 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[1] >> 18 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[1] >> 17 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[1] >> 16 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[1] >> 15 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[1] >> 14 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[1] >> 13 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[1] >> 12 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[1] >> 11 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[1] >> 10 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[1] >> 9 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[1] >> 8 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[1] >> 7 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[1] >> 6 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[1] >> 5 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[1] >> 4 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[1] >> 3 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[1] >> 2 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[1] >> 1 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[1] >> 0 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[0] >> 63 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[0] >> 62 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[0] >> 61 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[0] >> 60 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[0] >> 59 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[0] >> 58 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[0] >> 57 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[0] >> 56 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[0] >> 55 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[0] >> 54 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[0] >> 53 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[0] >> 52 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[0] >> 51 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[0] >> 50 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[0] >> 49 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[0] >> 48 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[0] >> 47 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[0] >> 46 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[0] >> 45 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[0] >> 44 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[0] >> 43 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[0] >> 42 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[0] >> 41 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[0] >> 40 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[0] >> 39 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[0] >> 38 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[0] >> 37 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[0] >> 36 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[0] >> 35 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[0] >> 34 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[0] >> 33 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[0] >> 32 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[0] >> 31 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[0] >> 30 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[0] >> 29 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[0] >> 28 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[0] >> 27 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[0] >> 26 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[0] >> 25 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[0] >> 24 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[0] >> 23 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[0] >> 22 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[0] >> 21 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[0] >> 20 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[0] >> 19 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[0] >> 18 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[0] >> 17 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[0] >> 16 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[0] >> 15 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[0] >> 14 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[0] >> 13 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[0] >> 12 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[0] >> 11 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[0] >> 10 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[0] >> 9 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[0] >> 8 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[0] >> 7 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[0] >> 6 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[0] >> 5 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[0] >> 4 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[0] >> 3 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[0] >> 2 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[0] >> 1 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              

    res = Fp2_square(res);
    if (by[0] >> 0 & 1u) == 1u {
        res = Fp2_mul(res, fp2);
    }
              
}
