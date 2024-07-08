def dim(year: i32) : []i32 = 
    if year & 3 > 0 then [0, 31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]
    else [0, 31, 29, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]

def sundays =
    let (_, _, _, _, sum) = loop (y, m, d, cd, sum) = (1901, 1, 1, 2, 0i32)
        while y < 2001 do
            if d == 1 && cd % 7 == 0 then (y, m, d + 1, cd + 1, sum + 1)
            else if d == (dim(y))[m] then if m == 12 then (y + 1, 1, 1, cd + 1, sum)
                else (y, m + 1, 1, cd + 1, sum)
            else (y, m, d + 1, cd + 1, sum)
    in sum  

def main = sundays
