a Regex script for port ruby code to crystal, reduce friction.

Include only the easiest, most obvious, and safest parts.

with minimal effort and cost.

**Note:** Run this tool at your own risk.

# Dependency

The only dependency is the ruby builtin regex engine, MRI 2.0+ should work.

# How to use it

1. run bin/rubocop_double_quotes to change all single-quoted strings to double-quoted strings.

2. renamed the extension `.rb` to `.cr` for files will in-place use this script.

3. run bin/port_ruby_to_crystal, this will do in replace all "*.cr" use known rules.
   You bet added those files into git before do it to track changes.

4. if it give message like `syntax error in '???': ...`, this may be a bug of the script
   making the wrong substitution, Or it's just not covered by the rules.
   for this case, you need fix it manually, until no any error.

```sh
$: cd you_project_root
$: port_ruby_to_crystal
```

This project can also be used as a learning resource to see exactly what Ruby APIs are different with Crystal, just check the diff of `./test/test.rb` with `./test/test.cr`.

## Why not replace `[]` to `[] of SomeType`, `{}` to `{} of SomeType => SomeType`, it's really annoying of those syntax error.

There is no good default SomeType for this case, following is a good [advice](https://forum.crystal-lang.org/t/is-there-exists-a-dart-dynamic-type-equivalent-for-crystal-or-equivalent-usage/5082/8?u=zw963), you can replace all unkown type to `BlackHole`, make formatter check pass, then figure the correct type out.

# Contributing

1. Add new rule into ./port_ruby_to_crystal.
2. Add test cases into test/test.rb.
3. Run ./test.sh ensure no error, like this:

```sh
 ╰─ $ ./test.sh
Running ruby test.rb successful.
Running crystal run test.cr successful.
```
