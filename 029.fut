-- init number of terms to 9801 = 99^2 (all terms incl. duplicates)
def euler029 = 
    let result = loop unique = 9801i32 for base in 2...10 do
        let (sum, _, _) = loop (sum, exp, mult) = (0, 2, base)
            while mult * base <= 100 do 
                (sum + (100 / exp - 1), exp + 1, mult * base)
        in unique - sum
    in result + 1
            
def main = euler029
