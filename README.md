# ruby-katas

Hands-on Ruby practice: fill in the stubs in `lib/`, make the specs in `spec/` go green.
Every file in `lib/` has a matching `_spec.rb` in `spec/` (same path).

## Setup

```sh
bundle install
```

## Running

```sh
bundle exec rspec                                              # everything
bundle exec rspec spec/level_1_fundamentals                    # one level
bundle exec rspec spec/level_2_objects/03_super_spec.rb        # one file
bundle exec rspec spec/level_2_objects/03_super_spec.rb:12     # one test (line number)
bundle exec rake level_3                                       # level shortcuts: level_1, level_2, level_3, katas
```

Tests start out red. That is the point. Read the failure, fix one thing, rerun.

## Progression

**Level 1 – Fundamentals** (`lib/level_1_fundamentals`)
- [ ] 01 basic types
- [ ] 02 symbols
- [ ] 03 conditionals
- [ ] 04 case
- [ ] 05 loops
- [ ] 06 string interpolation
- [ ] 07 classes

**Level 2 – Objects** (`lib/level_2_objects`)
- [ ] 01 method chaining
- [ ] 02 self
- [ ] 03 super
- [ ] 04 yield

**Level 3 – Blocks, procs, lambdas** (`lib/level_3_blocks`)
- [ ] 01 blocks
- [ ] 02 procs
- [ ] 03 lambdas
- [ ] 04 proc vs lambda

**Katas** (`lib/katas`, named `<rank>_<name>.rb`, Codewars style)
- [ ] 6kyu hungry hippos

## Adding a kata

1. `lib/katas/<rank>_<name>.rb` with the problem statement as a comment and the stub class.
2. `spec/katas/<rank>_<name>_spec.rb` starting with `require "katas/<rank>_<name>"`.
3. Tick it off here.

No solutions are stored in the repo.
