#!/usr/bin/env ruby

def words(n)
    u = ['one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine', 'ten',\
        'eleven', 'twelve', 'thirteen', 'fourteen', 'fifteen', 'sixteen', 'seventeen', \
        'eighteen', 'nineteen']

    d = ['twenty', 'thirty', 'forty', 'fifty', 'sixty', 'seventy', 'eighty', 'ninety']

    n = n.to_i

    if n == 0
        return ''
    end

    if n <= u.size
        return u[n - 1]
    end

    if n < 100
        word = d[n/10 - 2]
        if n % 10 != 0
            word += words(n % 10)
        end
        return word
    end

    suffix = words(n - (n/100)*100)
    word = u[n/100 - 1] + 'hundred' 
    if suffix.size > 0
        word += 'and' + suffix
    end
    return word
end

puts ((1..999).map{|i| words(i)}.reduce(:+) + 'onethousand').size
