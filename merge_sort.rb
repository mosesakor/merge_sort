
def merge(a, b, c)
    if a[0] == nil && b[0] == nil
        return c
    elsif a[0] == nil
        c << b[0]
        merge(a, b[1..-1], c)
    elsif b[0] == nil
        c << a[0]
        merge(a[1..-1], b, c)
    elsif a[0] < b[0]
        c << a[0]
        merge(a[1..-1], b, c)
    else
        c << b[0]
        merge(a, b[1..-1], c)
    end
end

def merge_sort(arr)
    if arr.length == 1
        arr
    else
        x = arr.length/2.to_f
        x = x.ceil
        a = merge_sort(arr[0..(arr.length/2) - 1])
        b = merge_sort(arr[(x)..-1]) 
        c = []
        merge(a, b, c)
    end

end

p merge_sort([1,3,4,7, 5, 0, 2,11,6, 9, 901, 200]), "hi"


def push_to_arr(a, b, sort = [])
    return sort if a[0] == nil && b[0] == nil
    if a[0] < b[0]
        sort << a[0]
        sort << b[0]
    else
        sort << b[0]
        sort << a[0]
    end
     push_to_arr(a[1..-1], b[1..-1], sort)
end

p push_to_arr([1,3,4], [2,5,7])



p q_sort(merge([1,3,4,7, 5, 2,11,6, 9,201,900]))