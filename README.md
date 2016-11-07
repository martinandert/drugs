# drugs

[![Gem Version](https://badge.fury.io/rb/drugs.svg)](https://rubygems.org/gems/drugs)
[![npm version](https://badge.fury.io/js/drugs.svg)](https://www.npmjs.com/package/drugs)
[![Dependency Status](https://gemnasium.com/badges/github.com/martinandert/drugs.svg)](https://gemnasium.com/github.com/martinandert/drugs)

A list of pharmaceuticals. Useful for fighting contact form spam etc.


## Installation & Usage

### As a Node.js package

Using [npm](https://www.npmjs.com/):

```
$ npm install --save drugs
```

or using [yarn](https://yarnpkg.com/):

```
$ yarn add drugs
```

Then, in your code:

```js
var drugs = require('drugs');

console.log(drugs)
//=> ['abilify', 'advil', 'albuterol', ...]
```

### As a Ruby gem

Add this line to your application's Gemfile:

```ruby
gem 'drugs'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install drugs

Then, in your code:

```ruby
require "drugs"

include Drugs
puts drugs #=> ["abilify", "advil", "albuterol", ...]

# Or without including the module
Drugs.drugs #=> ["abilify", "advil", "albuterol", ...]
```


## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/martinandert/drugs.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

