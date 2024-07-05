def squarediff(limit: i32) =
    let (sum, sqs) = loop (a, b) = (0, 0) for i in (1...limit) do
        (a + i, b + i * i)
    in sum * sum - sqs

def main = squarediff(100)
