def trip(r: i32, s:i32, t:i32) =
    let p = [r + s, r + t, r + s + t] |> i32.sum in
        if p <= 1000 then p else 0

def rsd2(r: i32) = (r * r) / 2

def dickson(r: i32) = let peri = replicate 1001 0i32 in
    let (_, _, p) = loop (r, d, p) = (r, 1, peri) while r < 170 do
        if d * d > rsd2(r) then (r + 2, 1, p)
        else if 0 == rsd2(r) % d then let t = trip(r, d, rsd2(r) / d) in
            let p[t] = p[t] + 1i32 in (r, d + 1, p)
            else (r, d + 1, p)
    in p

def euler039 =
    let pcount = dickson(2)
    let maxcount = pcount[1:] |> i32.maximum in
    loop maxp = 0i32 for i in 1..<1000 do
        if pcount[i] == maxcount then i else maxp

def main = euler039
