
p='ababaca'

l1 = len(p)

j = 0
i = 1
prefix = [0]

## go through this algorithm  right now ! make it done !
while len(prefix) < l1:
    if p[j] == p[i]:
        prefix.append(j+1)
        i += 1
        j += 1
    else:
        if j == 0:
            prefix.append(0)
            i += 1
        if j != 0:
            j = prefix[j-1]

print prefix
