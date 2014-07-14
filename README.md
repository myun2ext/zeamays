# Zeamays

[![Build Status](https://travis-ci.org/myun2ext/zeamays.svg?branch=master)](https://travis-ci.org/myun2ext/zeamays)

**Zeamays** is **Simple Persistation Any Data** for Ruby.

https://rubygems.org/gems/zeamays

## Installation

Add this line to your application's Gemfile:

    gem 'zeamays'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install zeamays

## Usage

Declare Modeling for

```ruby
class YellowSweet < Zeamays::Cob
  gene_sequencing :i8, :i16, :integer, :string
end
```

columns declare use for `gene_sequencing` **class method**.

Symbol use for Column type.

* `:i8`: 1byte Integer (8bits)
* `:i16`: 2byte Integer (16bits)
* `:i32` or `:integer`: 4byte Integer (32bits)
* `:string`: String type (Any length usable)

## Add new Record

Use for `grow` or `grow!` method(`grow` method is alias for `grow!`).

for example

```ruby
yellow_sweet = YellowSweet.new
yellow_sweet.grow 30, 2000, 500000, "test"
```

## Packing (Serialization)

Use for `pack` method.

```ruby
yellow_sweet.pack
```

returned **serialized** String.

## Unpacking (Deserialization)

Use for `unpack` **class method**.

```ruby
YellowSweet.unpack(packed_string)
```

returned **deserialized** values.

## Persistation for File System

TODO

## Contributing

1. Fork it ( https://github.com/[my-github-username]/zeamays/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
