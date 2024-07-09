def fact: []i32 = [1, 1, 2, 6, 24, 120, 720, 5040, 40320, 362880]
def l2i(l: []i32) = loop n = 0 for i in l do n * 10 + i64.i32 i

def euler024(perm: i32) = 
    let (res, _, _) = loop (r, s, p) = ([], (0...9), perm - 1) 
        for f in reverse fact do let n = s[p / f] in
            (r ++ [n], filter (!= n) s, p % f)
    in l2i res

def main = euler024(1000000)
