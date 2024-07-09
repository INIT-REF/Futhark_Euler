def divsum(n: i32) = if n == 1 then 1 else
    reduce (+) 0 (map(\x -> if n % x == 0 then x else 0) (1...(n / 2)))

def abnums(limit: i32) : []i32 = 
    loop abn = [] for n in (1...limit) do
        if divsum(n) > n then abn ++ [n] else abn

def absums(limit: i32) = 
    loop (

def main = reduce (+) 0 (map(\x-> if x < 28123 then x else 0) (absums(abnums(28123))))
