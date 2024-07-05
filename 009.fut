def tri(r: i32, s:i32, t:i32) = [r + s, r + t, r + s + t]
def rsd2(r: i32) = (r * r) / 2

def dickson(r: i32) =
    let (_, _, t) = loop (r, d, t) = (r, 1, []) 
        while 1000 != reduce (+) 0 t do
            if d * d > rsd2(r) then (r + 2, 1, [])
            else if 0 == rsd2(r) % d then (r, d + 1, (tri(r, d, rsd2(r) / d)))
                else (r, d + 1, t)
    in reduce (*) 1 t


def main = dickson(2)
