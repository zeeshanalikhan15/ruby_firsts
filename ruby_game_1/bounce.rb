require 'io/console'
require "curses"

def cls()
    $stdout.clear_screen # or STDOUT.clear_screen
end

def print_borad(borad, w, h)
    for i in 0...w do
        for j in 0...h do
            print "#{borad[i][j]}"
        end
            puts "|"
    end
    for j in 0...h do
        print "_"
    end
    print "|"
    puts ""
end

def move_symbol(w, h, x, y, vx, vy)
    if x + vx >= w || x + vx <= 0
        vx = -vx
    end

    if y + vy >= h || y + vy <= 0
        vy = -vy
    end

    x = x + vx 
    y = y + vy

    return x, y, vx, vy
end

width = 25
height = 80
myborad = Array.new(width) { Array.new(height) {|e| e = " " } }
symbol = "*"
x = 1
y = 1
vx = 1
vy = 1

while true do
    cls()
    myborad[x][y] = symbol
    print_borad(myborad, width, height)
    myborad[x][y] = " "
    x, y, vx, vy = move_symbol(width, height, x, y, vx, vy)  
    puts "x = #{x}, y = #{y}, vx = #{vx}, vy = #{vy}"
    sleep(0.02) 
end

