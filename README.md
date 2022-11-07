a Regex script for port ruby code to crystal, reduce friction.

Include only the easiest, most obvious, and safest parts.

with minimal effort and cost.

**Note:** Run this tool at your own risk.

# Dependency

The only dependency is the ruby builtin regex engine, MRI 2.0+ should work.

# How to use it

Entrying the projet folder, you should have renamed the extension `.rb`
to .cr for files will in-place use this script.

Before this step, it's a good idea to use rubocop to make some style changes.
e.g. change all single-quoted strings to double-quoted strings.

```sh
$ cd you_project_root
$: path/to/port_ruby_to_crystal
```

This project can also be used as a learning resource to see exactly what Ruby APIs are different with Crystal, just check the diff of `./test/test.rb` with `./test/test.cr`.

## Why not replace `[]` to `[] of SomeType`, `{}` to `{} of SomeType => SomeType`, it's really annoying of those syntax error.

There is no good default SomeType for this case, following is a good [advice](https://forum.crystal-lang.org/t/is-there-exists-a-dart-dynamic-type-equivalent-for-crystal-or-equivalent-usage/5082/8?u=zw963)

# Contributing

1. Add new port cases into test/test.rb.
2. Run ./test.sh ensure without error.

```sh
 ╰─ $ ./test.sh
Running ruby test.rb successful.
Running crystal run test.cr successful.
```
