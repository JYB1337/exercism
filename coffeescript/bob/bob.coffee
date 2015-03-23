#John Youngblood
Bob = ->

Bob::hey = (input) ->
  output = 'Whatever.'
  if input == input.toUpperCase() and input != input.toLowerCase()
    output = 'Whoa, chill out!'
  else if input.charAt(input.length - 1) == '?'
    output = 'Sure.'
  else if input.trim() == ''
    output = 'Fine. Be that way!'
  output

module.exports = Bob