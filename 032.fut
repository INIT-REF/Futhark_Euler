def ispd(a: i32, b: i32, c: i32) = 
    let (res, _, _, _) = loop (arr, a, b, c) = (replicate 10 0i32, a, b, c)
        while c > 0 do
            let arr[a % 10] = 1
            let arr[b % 10] = 1
            let arr[c % 10] = 1 in (arr, a / 10, b / 10, c / 10)
    in 9 == (res |> tail |> i32.sum)

def euler032 = 
    let res = loop pdps = replicate 9876 0i32 for a in 1...100 do
        loop pdps for b in (1234 / a)...(9876 / a) do
            if ispd(a, b, a * b) then let pdps[a * b] = a * b in pdps
            else pdps
    in res |> i32.sum

def main = euler032
