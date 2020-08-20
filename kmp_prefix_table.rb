


def kmp_prefix_table(pattern)
    prefix = [0] * pattern.length

    j = 0
    1.upto(pattern.length - 1) do |i|
        while j > 0 && pattern[j] != pattern[i]
            j = prefix[j - 1]
        end
        if pattern[j] == pattern[i]
            prefix[i] = j + 1
            j += 1 
        else 
            prefix[i] = 0
        end 
    end 

    prefix 
end 

pattern='ababaca'

print kmp_prefix_table pattern