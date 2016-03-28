@insertParam = (key, value) ->
  key = encodeURIComponent(key)
  value = encodeURIComponent(value)
  kvp = document.location.search.substr(1).split('&')
  if kvp == ''
    document.location.search = '?' + key + '=' + value
  else
    i = kvp.length
    x = undefined
    while i--
      x = kvp[i].split('=')
      if x[0] == key
        x[1] = value
        kvp[i] = x.join('=')
        break
    if i < 0
      kvp[kvp.length] = [
        key
        value
      ].join('=')
    document.location.search = kvp.join('&')
  return
