def max(a: i32)(b: i32) = if a > b then a else b

def ispal(n: i32) =
    let (_, rev) = loop (t, r) = (n, 0) while t > 0 do
        (t / 10, r * 10 + t % 10)
    in if n == rev then n else 0

def products(A: []i32) = flatten(map(\a -> map(\b -> a * b) A) A)
def euler004 = products(100...999) |> map ispal |> reduce max 0

def main = euler004
