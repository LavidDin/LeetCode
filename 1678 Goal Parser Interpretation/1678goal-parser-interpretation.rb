# @param {String} command
# @return {String}
def interpret(command)
  command.gsub('()', 'o').gsub(/[^0-9a-z]/i, '')
end