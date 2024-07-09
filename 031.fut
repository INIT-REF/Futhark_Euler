def coins : []i32 = [1,2,5,10,20,50,100,200]
def arr(n: i32) = let s = replicate (i64.i32(n + 1)) 0i32 in let s[0] = 1 in s

def euler031(sum: i32) =
    let res = loop sums = copy (arr(sum)) for i in coins do
        let (sums, _) = loop (sums, j) = (sums, i) while j <= sum do
            let sums[j] = sums[j] + sums[j - i] in (sums, j + 1)
        in sums
    in res[sum]

def main = euler031(200)
