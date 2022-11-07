a Regex script for port ruby code to crystal, reduce friction.

Include only the easiest, most obvious, and safest parts.

with minimal effort and cost.

**Note:** Run this tool at your own risk.

# How to use it

Entrying the projet folder, you should have renamed the extension .rb file
to .cr for those will in-place files.

Before this step, it's a good idea to use rubocop to make some style changes.
e.g. change all single-quoted strings to double-quoted strings.

```sh
$ cd you_project_root
$: path/to/port_ruby_to_crystal
```

This project can also be used as a learning resource to see exactly what Ruby APIs are different with Crystal, just check the diff of `./test/test.rb` with `./test/test.cr`.

# Run test

Add new use cases into test/test.rb, then ensure run ./test.sh no error.

```sh
 ╰─ $ ./test.sh
Running ruby test.rb successful.
Running crystal run test.cr successful.
```
