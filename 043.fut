def p1 : []i64 = [1, 0, 2, 3, 4, 5, 6, 7, 8, 9]
def divs : []i64 = [2, 3, 5, 7, 11, 13, 17]

def l2i(arr: []i64) = 
    let (res, _) = loop (i, l) = (0, arr) while length(l) > 0 do
        (i * 10 + l[0], tail(l))
    in res

def permute(arr: []i64) = let p = copy arr in 
    let (piv, ceil) = loop (piv, ceil) = (8, 9)
        while p[piv] > p[piv + 1] do
            (piv - 1, ceil)
    in  let (piv, ceil) = loop (piv, ceil) 
            while p[ceil] < p[piv] do
                (piv, ceil - 1)
    in  let tmp = p[piv]
        let p[piv] = p[ceil]
        let p[ceil] = tmp in p[:piv + 1] ++ (reverse(p[piv + 1:]))

def subdiv(n: i64) =
    let (l, _) = loop (l, num) = ([], n) for i in 6..5...0 do
        ([(num % 1000, divs[i])] ++ l, num / 10)
    in l |> map(\(x,y) -> x % y == 0) |> and

def euler043 = let s = copy p1 in
    let(sum, _) = loop (sum: i64, str) = (0, s) while l2i(str) < 9876543210 do
        if subdiv(l2i(str)) then (sum + l2i(str), permute(str))
        else (sum, permute(str))
    in sum

def main = euler043
