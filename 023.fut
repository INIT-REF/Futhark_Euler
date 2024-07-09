def divsum(n: i32) = if n == 1 then 1 
    else (1...(n / 2)) |> map(\x -> if n % x == 0 then x else 0) |> i32.sum

def abnums(limit: i32) : []i32 = 
    loop abn = [] for n in (1...limit) do
        if divsum(n) > n then abn ++ [n] else abn

def euler023(limit: i32) =  
    let nabs = loop nabs = replicate (i64.i32(limit + 1)) true
        for i in abnums limit do loop nabs for j in abnums limit do
            if i + j <= limit 
                then let nabs[i + j] = false in nabs
                else nabs
    in (1...limit) |> map (\x -> if nabs[x] then x else 0) |> i32.sum

def main = euler023(28123)
