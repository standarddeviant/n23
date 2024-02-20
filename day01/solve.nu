

def day01_part1 [fname] {
    mut ans = 0
    for line in (open $fname | lines) {
        log debug $"line = ($line)"
        let digs = parse-single-digits $line
        log debug $"digs = ($digs)"
        let a = (10 * ($digs | first)) + (1 * ($digs | last))
        log debug $"a = ($a)"
        $ans += $a
    }
    log info $"day01, part1: answer = ($ans)"
}

let LU = {
            '1': 1, '2': 2, '3': 3, '4': 4,
    '5': 5, '6': 6, '7': 7, '8': 8, '9': 9,
               'one': 1, 'two'  : 2, 'three': 3, 'four': 4,
    'five': 5, 'six': 6, 'seven': 7, 'eight': 8, 'nine': 9
}

def parse-dig-strs [s: string] {
    let out = $s | parse --regex '([0-9]|one|two|three|four|five|six|seven|eight|nine)' | get capture0
    log debug $"out = ($out)"
    log debug $"out | describe = ($out | describe)"
    $out
}


def day01_part2 [fname] {
    mut ans = 0
    for line in (open $fname | lines) {
        log debug $"line = ($line)"
        let dig_strs = parse-dig-strs $line 
        log debug $"dig_strs = ($dig_strs)"
        let digs = $dig_strs | each {|x| ($LU | get $x) }
        log debug $"digs = ($digs)"
        let a = (10 * ($digs | first)) + (1 * ($digs | last))
        log debug $"a = ($a)"
        $ans += $a
    }
    log info $"day01, part2: answer = ($ans)"
}
