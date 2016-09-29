# learn_capybara
lets sit and try capybara in 30 minutes


Install ruby 2.0 or above
RVM is ruby version manager. We can install it

```bash
$\curl -sSL https://get.rvm.io | bash -s stable --ruby
$rvm install 2.2.0
$rvm use 2.2.0 --default
```
on ubuntu

```bash
$sudo apt-get install ruby
```

Install bundler

```bash
$gem install bundler
```
clone the repo and run bundle install ,all dependencies will be added
```bash
$bundle install
```

For Poltergeist, You must have PhatomJs installed.
On Mac : Use HomeBrew. Please note MacPort installtion is not recommended

```bash
$brew install phantomjs
```

On Ubuntu,you  use below command

```bash
$sudo apt-get install phantomjs
```

###Advanced driver configuration in Cucumber

So far, we have only set the default driver or the JavaScript driver using a symbol:

```ruby
Capybara.default_driver = :selenium
```
It is quite likely that you will need to fine-tune the configuration of your driver or register multiple configurations, which you can select from at run time.

An example of this might be that you are running tests from your office, and the corporate network sits behind an HTTP Proxy (the bane of a tester's life). If you are using Selenium WebDriver with Firefox, you could register a custom driver configuration in Capybara as follows:

```ruby
Capybara.register_driver :selenium_proxy do |app|
  profile = Selenium::WebDriver::Firefox::Profile.new
  profile["network.proxy.type"] = 1
  profile["network.proxy.no_proxies_on"] = "capybara.local"
  profile["network.proxy.http"] = "cache-mycompany.com"
  profile["network.proxy.ssl"] = 'securecache-mycompany.com'
  profile["network.proxy.http_port"] = 9999
  profile["network.proxy.ssl_port"] = 9999
  profile.native_events = true
  Capybara::Selenium::Driver.new(app, :browser => :firefox, :profile => profile)
end
Capybara.default_driver = :selenium_proxy
```

This configuration uses the Selenium WebDriver API to construct a custom Firefox profile,
Set the proxy details programmatically, register the driver with the name :selenium-proxy,
and then make it the default driver.
