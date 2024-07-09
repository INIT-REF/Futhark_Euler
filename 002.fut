def fib(limit: i32) = 
    let f = loop arr = [2, 1] while head(arr) < limit do
        [arr[0] + arr[1]] ++ arr
    in tail(f)

def euler001(limit: i32) = fib(limit) |> map (\n -> n * (1 ^ n & 1)) |> i32.sum

def main = euler001(4000000)
