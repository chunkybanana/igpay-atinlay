pigLatin = (str) ->
  arr = []
  for k of str.split(' ')
    x = str.split(' ')[k]
    str2 = undefined
    if x.search(/[aeiouy]/i) != -1
      str2 = x.slice(x.search(/[aeiouy]/i)) + x.slice(0, x.search(/[aeiouy]/i))
      if x.search(/[aeiouy]/i) == 0
        str2 += 'way'
      else
        str2 += 'ay'
    else
      str2 = x + 'ay'
    str3 = str2
    str2 = str2.replace(/[^A-z ]/g, '').toLowerCase() + (if str3.match(/[?.!,]/g) == null then '' else str3.match(/[?.!,]/g).join(''))
    if str2 == 'ay'
      str2 = ''
    if x.charAt(0) == x.charAt(0).toUpperCase()
      str2 = str2.charAt(0).toUpperCase() + str2.slice(1)
    arr.push str2
  arr.join ' '