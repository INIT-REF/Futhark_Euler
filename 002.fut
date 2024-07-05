def fib(limit: i32) = 
    let f = loop arr = [2, 1] while head(arr) < limit do
        [arr[0] + arr[1]] ++ arr
    in tail(f)

def even(n: i32) = if 0 == n % 2 then n else 0

def main = reduce (+) 0 (map(\x -> even(x)) (fib(4000000)))
