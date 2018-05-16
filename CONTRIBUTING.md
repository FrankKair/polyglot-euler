# Contributing guidelines

When submitting pull requests in a particular programming language, this document is a reference.
This pattern / framework was adopted to facilitate comparisons between solutions.

### C

```c
#include <stdio.h>

int solve() {
    // Body
}

int main() {
    printf('%d\n', solve());
    return(0);
}
```

### C++

```cpp
#include <iostream>
using namespace std;

int function(int x) {
    // Body
}

int solve() {
    // Call other functions
}

int main() {
    int result = solve();
    cout << result << endl;
}
```

### Clojure

```clojure
(defn function1 [x]
  ; function body
)

(defn solve [] (function1 a))

(prn (solve))
```

### Crystal

```crystal
def function
  # Body
end

def solve
  # Call other functions
end

puts solve
```

### D

```d
import std.stdio;

int function(int x) {
    // Body
}

int solve() {
    // Call other functions
}

void main() {
    int result = solve();
    writeln(result);
}
```

### Elixir

```elixir
#!/usr/bin/env elixir
defmodule Problem001 do
  defp function(x) do
    # Body
  end

  def solve do
    # Call other functions
  end
end

IO.puts Problem001.solve
```

### Erlang

```erlang
-module(p001).
-export([solve/0]).

function(X) -> % Body.

solve() ->
  % Call other functions
```

### Go

Run `go fmt` before commit.

```go
package main

import "fmt"

func function(x int) int {
  // Body
}

func solve() int {
  // Call other functions
}

func main() {
  result := solve()
  fmt.Println(result)
}
```

### Haskell

```haskell
function1 :: a -> b
function1 x = -- Body

function2 :: b -> c
function2 y = -- Body

main :: IO
main = print $ -- Call other functions
```
Note: type signatures are mandatory to all top-level functions.

### Java

```java
public class p028 {
    private static int function(int x) {
        // Body
    }

    private static int solve() {
        // Call other functions
    }

    public static void main(String[] args) {
        int result = solve();
        System.out.println(result);
    }
}
```

### JavaScript

```javascript
#!/usr/bin/env node
function func(x) {
  // Body
}

function solve() {
  // Call other functions
}

const result = solve()
console.log(result)
```

### Lua

```lua
#!/usr/bin/env lua
function func(x)
  -- Body
end

function solve()
  -- Call other functions
end

local result = solve()
print(result)
```

### Python

```python
#!/usr/bin/env python3
def function(x):
    # Body


def solve():
    # Call other functions


if __name__ == '__main__':
    result = solve()
    print(result)
```

### Rust

```rust
fn function(x: i32) -> i32 {
    // Body
}

fn solve() -> i32 {
    // Call other functions
}

fn main() {
    let result = solve();
    println!("{}", result);
}
```

### Ruby

Use the gem `rubocop` (`$ gem install rubocop`).
Run `$ rubocop --auto-correct` before commit.

```ruby
#!/usr/bin/env ruby
def function
  # Body
end

def solve
  # Call other functions
end

puts solve
```

### Scala

```scala
object Main {
  def main(args: Array[String]): Unit = {
    /* Body */
  }
}

```

### Swift

```swift
func function(x: Int) -> Int {
    // Body
}

func solve() -> Int {
    // Call other functions
}

let result = solve()
print(result)
```
