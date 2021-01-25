def pigLatin(str)
    arr = []
    str.split(' ').each do |x|
        if x.match(/a|e|i|o|u|y/i)
            str2 = x.slice(x =~ /a|e|i|o|u|y/i,x.length) + x.slice(0,x =~ /a|e|i|o|u|y/i)
            if(x.slice(0).match(/a|e|i|o|u|y/i))
                str2 += 'way'
            else 
                str2 += 'ay'
            end
            if x.capitalize == x
                str2.capitalize!
            end
            chars = str2.scan(/[?,.!]/).join('')
            str2.gsub!(/[^a-zA-Z]/,'')
            arr.push(str2 + chars)
        else
            str2 = x + 'ay'
            chars = str2.scan(/[?,.!]/).join('')
            str2.gsub!(/[^a-zA-Z]/,'')
            arr.push(str2 + chars)
        end
    end
    arr.join(' ')
end