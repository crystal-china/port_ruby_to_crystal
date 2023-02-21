a Regex script for port ruby code to crystal, reduce friction.

Include only the easiest, most obvious, and safest parts.

with minimal effort and cost.

**Note:** Run this tool at your own risk.

# Dependency

The only dependency is the ruby builtin regex engine, MRI 2.0+ should work.

# How to use it

1. run bin/rubocop_double_quotes to change all single-quoted strings to double-quoted strings.

2. renamed the extension `.rb` to `.cr` for files will in-place use this script.

3. run bin/port_ruby_to_crystal, this will do replace on known rules. if it give some error messages,
   just fix it manually, until no any error.

```sh
$ cd you_project_root
$: path/to/port_ruby_to_crystal
```

This project can also be used as a learning resource to see exactly what Ruby APIs are different with Crystal, just check the diff of `./test/test.rb` with `./test/test.cr`.

## Why not replace `[]` to `[] of SomeType`, `{}` to `{} of SomeType => SomeType`, it's really annoying of those syntax error.

There is no good default SomeType for this case, following is a good [advice](https://forum.crystal-lang.org/t/is-there-exists-a-dart-dynamic-type-equivalent-for-crystal-or-equivalent-usage/5082/8?u=zw963)

# Contributing

1. Add new rule into ./port_ruby_to_crystal.
2. Add test cases into test/test.rb.
3. Run ./test.sh ensure no error, like this:

```sh
 ╰─ $ ./test.sh
Running ruby test.rb successful.
Running crystal run test.cr successful.
```
