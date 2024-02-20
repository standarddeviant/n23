use std log

def parse-ints [s: string] {
    let out = $s | parse --regex '(-?\d+)' | get capture0 | into int
    log debug $"out = ($out)"
    log debug $"out | describe = ($out | describe)"
    $out
}

def parse-single-digits [s: string] {
    let out = $s | parse --regex '(\d)' | get capture0 | into int
    log debug $"out = ($out)"
    log debug $"out | describe = ($out | describe)"
    $out
}
