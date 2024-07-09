def fib1() = let f1 = replicate 112 0i32 in let f1[111] = 1 in f1
def fib2() = let f2 = replicate 112 0i32 in let f2[111] = 1 in f2
def e9 = 1000000000i32

def euler025 = let (index, _, _) = loop (index, f1, f2) = (2i32, fib1(), fib2())
    while f2[0] == 0 do
        let (index, f1, f2, _) = loop (index, f1, f2, carry) = (index, f1, f2, 0) 
            for i in (111..110...0) do
                let tmp = f2[i]
                let f2[i] = (f1[i] + tmp + carry) % e9
                let carry = (f1[i] + tmp + carry) / e9
                let f1[i] = tmp
                in (index, f1, f2, carry)
        in (index + 1, f1, f2)
    in index

def main = euler025
