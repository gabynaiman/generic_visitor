# GenericVisitor

Ruby visitor pattern implementation

Based on Aaron Patterson [post](http://blog.rubybestpractices.com/posts/aaronp/001_double_dispatch_dance.html)

## Installation

Add this line to your application's Gemfile:

    gem 'generic_visitor'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install generic_visitor

## Usage

    require 'generic_visitor'

    class Country < Struct.new(:name)
      def as_hash
        accept AsHash.new
      end
    end

    class City < Struct.new(:name, :country)
      def as_hash
        accept AsHash.new
      end
    end

    class AsHash < GenericVisitor::Visitor

      visitor_for Country do |country|
        {name: country.name}
      end

      visitor_for City do |city|
        {
            name: city.name,
            country: city.country.as_hash
        }
      end

    end

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
