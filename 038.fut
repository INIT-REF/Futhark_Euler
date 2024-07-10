def pd19 : []i32 = [0, 1, 1, 1, 1, 1, 1, 1, 1, 1]

def ispd(n: i32) =
    let (i2l, _) = loop (l, num) = ((replicate 10 0), 100002 * n) while num > 0 do
        let l[num % 10] = 1 in (l, num / 10)
    in if map2 (==) i2l pd19 |> and then 100002 * n else 0

def euler038 = (9234...9487) |> map ispd |> i32.maximum

def main = euler038
