# chrome_testing_downloader

chrome_testing_downloader is a Ruby gem to download and use any version of [Chrome For Testing](https://developer.chrome.com/blog/chrome-for-testing) in Ruby on Rails system tests.

Forked from [SonicGarden/chrome_testing_downloader](https://github.com/SonicGarden/chrome_testing_downloader).

## Required

- node(npx)

## Installation

Add the following line to your Gemfile and run bundle install:


```ruby
group :development, :test do
  gem 'chrome_testing_downloader', github: 'imeos/chrome_testing_downloader'
end
```

After installation, run the following command to generate the `.chrome-version` file.

```
bundle exec rake chrome:update_version
```

## Usage

In `spec/rails_helper.rb`
```ruby
Selenium::WebDriver::Chrome.path = ChromeTestingDownloader.chrome_path
Selenium::WebDriver::Chrome::Service.driver_path = ChromeTestingDownloader.chromedriver_path
```

## Rake Tasks

The gem provides the following Rake tasks:

- `chrome:download`: Downloads the required version of Chrome for Testing.
- `chrome:check_version`: Checks if the installed version of Chrome for Testing is up-to-date.
- `chrome:update_version`: Updates the installed version of Chrome for Testing.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).