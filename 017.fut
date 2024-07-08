def ones : []i32 = [0, 3, 3, 5, 4, 4, 3, 5, 5, 4]
def teens : []i32 = [3, 6, 6, 8, 8, 7, 7, 9, 8, 8]
def tens : []i32 = [0, 0, 6, 6, 5, 5, 5, 7, 6, 6]
def hundreds : []i32 = [0, 10, 10, 12, 11, 11, 10, 12, 12, 11]

--init sum with 11 (for "one thousand") + 9 * 99 * 3 for "and" in hundreds
def count =
    loop sum = 11i32 + 9 * 99 * 3 for i in (1...999) do
        let tmp =
            if i % 100 < 10 then ones[i % 10]
            else if i % 100 < 20 then teens[i % 10]
            else tens[i % 100 / 10] + ones[i % 10]
        in sum + tmp + hundreds[i / 100]

def main = count
