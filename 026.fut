def plength(n: i32) = 
    let (_, p, _) = loop (n, p: i32, k: i32) = (n, 1, 10 % n) 
        while n > 1 && k > 1 do
            if n % 2 == 0 then (n / 2, 0, 10 % n)
            else if n % 5 == 0 then (n / 5, 0, 10 % n)
            else (n, p + 1, k * 10 % n)
    in (n, p)

def max(x1: i32, x2: i32)(y1: i32, y2: i32) = if x2 > y2 then (x1, x2) else (y1, y2)

def euler026(limit: i32) = 
    let (res,_) = 
        (2...limit) 
            |> map plength
            |> reduce max (0, 0)
    in res

def main = euler026(1000)
