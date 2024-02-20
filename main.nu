source utils.nu

log info 'day01...'
source ([day01 solve.nu] | path join)
# day01_part1 ([day01 test.txt] | path join)
# day01_part1 ([day01 input.txt] | path join)
day01_part2 ([day01 input.txt] | path join)


