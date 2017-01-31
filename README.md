## Usage

```
$ perl6 -Ilib -MPunnable -e 'role R {method r {...}}; make-punnable(R); my $or = R.new; say $or; $or.r'
R.new
Stub code executed
  in method <anon> at /Users/fernando/Punnable/lib/Punnable.pm6 (Punnable) line 7
  in block <unit> at -e line 1

Actually thrown at:
  in block <unit> at -e line 1
```
