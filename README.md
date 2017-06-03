# Api Consumer

Api Consumer is a rails app that demoes how to consume the Zillow [GetSearchResults](https://www.zillow.com/howto/api/GetSearchResults.htm) endpoint

### Tech

Api Consumer uses a number of open source projects to work properly:

* [Ruby](https://www.ruby-lang.org/en/) - A dynamic, open source programming language
* [Rails](https://github.com/rails/rails) - web-application framework that includes everything needed to create MVC web applications 
* [Rspec](http://rspec.info/) - Behaviour Driven Development for Ruby
* [Rubillow](https://github.com/synewaves/rubillow) - Rubillow is a ruby library to access the Zillow API.

### Installation

API Consumer requires [Ruby](https://www.ruby-lang.org/en/) 2.4.1 to run
Contributors of this project are expected (but not required) to use [RVM](https://rvm.io/) to manage their depedencies.

Install the dependencies and start the server.

```sh
$ cd working_dir
$ gem install bundler
$ bundle
$ bundle exec rake db:create
$ bundle exec rake db:migrate
$ bundle exec rails s
```

For production environments...

```sh
$ cd working_dir
$ gem install bundler
$ bundle
$ RAILS_ENV=production bundle exec rake db:create
$ RAILS_ENV=production bundle exec rake db:migrate
$ RAILS_ENV=production bundle exec rails s
```

### Dev Dependencies
 
* [RVM](https://rvm.io/)
* [Homebrew](https://brew.sh/) (Mac Specific)


### Todos

 - Dockerize

License
----

ISC License

Copyright (c) ''2014'', ''Api Consumer''

Permission to use, copy, modify, and/or distribute this software for any purpose with or without fee is hereby granted, provided that the above copyright notice and this permission notice appear in all copies.

THE SOFTWARE IS PROVIDED "AS IS" AND THE AUTHOR DISCLAIMS ALL WARRANTIES WITH REGARD TO THIS SOFTWARE INCLUDING ALL IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS. IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR ANY SPECIAL, DIRECT, INDIRECT, OR CONSEQUENTIAL DAMAGES OR ANY DAMAGES WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR PROFITS, WHETHER IN AN ACTION OF CONTRACT, NEGLIGENCE OR OTHER TORTIOUS ACTION, ARISING OUT OF OR IN CONNECTION WITH THE USE OR PERFORMANCE OF THIS SOFTWARE.
