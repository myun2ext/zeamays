# Zeamays

[![Build Status](https://travis-ci.org/myun2ext/zeamays.svg?branch=master)](https://travis-ci.org/myun2ext/zeamays)

**Zeamays** is simple serialization for Ruby.

https://rubygems.org/gems/zeamays

## Usage

### Declare Model

Declare for Modeling. example at

```ruby
class YellowSweet < Zeamays::Cob
  gene_sequencing :i8, :i16, :integer, :string
end
```

This is **RDB Table like** declared. but **column has noname**. (Type delcare only!)

Column Types for following

* `:i8`: 1byte Integer (8bits)
* `:i16`: 2byte Integer (16bits)
* `:i32` or `:integer`: 4byte Integer (32bits)
* `:string`: String type (Any length usable)

## Add new Record

Use for `grow` or `grow!` method. (`grow` method is alias for `grow!`)

for example

```ruby
yellow_sweet = YellowSweet.new
yellow_sweet.grow!(30, 2000, 500000, "test")
p yellow_sweet[0]
=> [30, 2000, 500000, "test"]
```

## Packing (Serialization)

Use for `pack` method.

```ruby
yellow_sweet.pack
=> "\x1E\a\xD0\x00\a\xA1 test\x00"
```

returned **serialized** String.

## Unpacking (Deserialization)

Use for `unpack` **class method**.

```ruby
YellowSweet.unpack("\x1E\a\xD0\x00\a\xA1 test\x00")
 => #<Zeamays::Cob:0x007fdc0b538150 @rows=[[30, 2000, 500000, "test"]]>
```

returned **deserialized** model instance.

## Persistation for File System

TODO

## Installation

Add this line to your application's Gemfile:

    gem 'zeamays'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install zeamays

## Contributing

1. Fork it ( https://github.com/[my-github-username]/zeamays/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
