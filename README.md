a Regex script for port ruby code to crystal, reduce friction.

Include only the easiest, most obvious, and safest parts.

only change the most easy part with minimum effort. 

with minimal effort and cost.

**Note:** Run this code at your own risk.

# How to use it

Entrying the projet folder, you should have renamed the extension .rb file
to .cr for those in-place files.

Before this step, it's a good idea to use rubocop to make some style changes.
e.g. change all single-quoted strings to double-quoted strings.

```sh
$: ./port_ruby_to_crystal
```

# Run test

```sh
 ╰─ $ ./test.sh
Running ruby test.rb successful.
Running crystal run test.cr successful.
```
