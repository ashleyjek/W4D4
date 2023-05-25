# Big - O Lecture notes

## Not many problems canbe solved using log n

What if a prime takes too long. Nested loops takes way too long at large scale.
Nested llops would be considered O(n^2)

## The main idea is what happens when the input size goes all the way to infinity or close to it

when doing asymptotic analysis you drop the constants and coefficients. Simplify first i.e (n * n^3 + 3) simplifies to
n^4 and becomes O(n^4) which is very bad.

> Determining Big-O complexity

## O(1)

```ruby
def first_thing(array)
    array.first
end
```

## .O(1)

```ruby
def three_hundredtimes(name)
    300000.times { blash blah blash}
end
```

## .O(n)

```ruby
def three_hundredtimes(name)
    300000.each{ blash blah blash}
end
```

## O(n)

```ruby
def most_common(name)
    counts = Hash.new(0) #O(1)
    words.chars.each { blash blasblah } #O(n)
    count.max_by {[ blah blah]} #O(n)
end
```

## Bsearch is O(log(n)) time complexity

## Bsearch is O(log(n)) space as well
