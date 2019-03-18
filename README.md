# Vanilla Cucumber example

This repo is used to test vanilla [Cucumber](https://github.com/cucumber/cucumber-ruby) and [Capybara](https://github.com/teamcapybara/capybara) functionality. It helps with the development of [Quke](https://github.com/Defra/quke).

## Pre-requisites

This project is setup to run against version 2.4.2 of Ruby and you'll also need to have installed [Bundler](https://www.google.com/url?sa=t&rct=j&q=&esrc=s&source=web&cd=1&cad=rja&uact=8&ved=2ahUKEwj1zvyI44zhAhXMa1AKHWXiDlcQFjAAegQIBBAB&url=https%3A%2F%2Fbundler.io%2F&usg=AOvVaw2woU_431hULjIRy9fsccTL).

## Installation

First clone the repository and then drop into your new local repo

```bash
git clone https://github.com/Cruikshanks/vanilla-cucumber.git && cd vanilla-cucumber
```

Next download and install the dependencies

```bash
bundle install
```

## Setup

You'll then need to start the demo app which the examples run against

```bash
bundle exec rake run
```

## Execution

Simply call

```bash
bundle exec cucumber
```

## Contributing to this project

If you have an idea you'd like to contribute please log an issue.

All contributions should be submitted via a pull request.

## License

This information is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

> If you don't add a license it's neither free or open
