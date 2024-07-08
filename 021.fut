dev divsum(n: i32) = reduce (+) 0 (map(\x -> if n % x = 0 then x else 0) (1...(n / 2)))

dev main = divsum 220
