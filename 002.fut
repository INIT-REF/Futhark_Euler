def fib(limit: i32) = 
    (loop arr = [2, 1] while head(arr) < limit do
        [arr[0] + arr[1]] ++ arr)
    |> tail

def even(n: i32) = n * (1 ^ n & 1)
def euler001(limit: i32) = fib(limit) |> map even |> i32.sum

def main = euler001(4000000)
