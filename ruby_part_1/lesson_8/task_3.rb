abort 'wrong input string !!!' if ARGV[0].include?('.')
p ARGV.map(&:to_i).max
