def d5p(n: i32) =
    let (res,_) = loop (res, n) = (0, n) while n > 0 do
        (res + (n % 10) ** 5, n / 10)
    in res

def euler030 = (2...354295) |> map(\x -> if x == d5p x then x else 0) |> i32.sum

def main = euler030
