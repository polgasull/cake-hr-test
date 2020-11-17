# README

This README would normally document whatever steps are necessary to get the
application up and running.

Initialize project locally

* ``` bundle install ``` 
* ``` rake db:create db:migrate ``` 
* ``` rails s ```
* Endpoint ``` /characters ```

Run Job for data import every 12 hours at 03:00 am
* ``` crontab -r ```
* ``` whenever --update-crontab --set environment='development' ```

If not working you can run manually
* ``` rails c ```
* ``` CharacterService.new.import_characters```

Run specs:
* ``` rspec . ```

## Structure

Models:
* Character (name, status, image)
* Episode (number, character_id)

Controllers: 
* Characters

What is doing this Project?

Every 12 hours we will import all characters data from a JSON API endpoint. 
This Data will be saved on our DB and printed as view to /characters
We will know: 

- Character Name
- Character Status
- Character Image
- Character Episodes

Check it yourself! 

Required gems: 
* ``` gem 'byebug', platforms: [:mri, :mingw, :x64_mingw] ``` 
* ``` gem 'rspec-rails', '~> 4.0', '>= 4.0.1' ``` 
* ``` gem 'factory_bot_rails', '~> 6.1' ``` 
* ``` gem 'faker' ``` 
* ``` gem 'shoulda-matchers', '~> 4.4', '>= 4.4.1' ``` 
* ``` gem 'pry', '~> 0.13.1' ``` 
* ``` gem 'whenever' ``` 
* ``` gem 'whenever-test' ``` 
* ``` gem "bulma-rails", "~> 0.8.0" ```
* ``` gem 'faraday', '~> 1.1' ```
* ``` gem 'kaminari', '~> 1.2', '>= 1.2.1' ```

## Author comments: 

First of all I enjoyed a lot the test and learned new things. Now I have more desire than before to continue improving rails code.   

1) I missed frozen_literals on each page and I decided to don't add it at the end for a better commit readibility

2) I added some styles to the view /characters

**More proud:**

* Service for JSON parse and import
* From dirty JSON to clean view

**Less proud:**

* Less specs than I would
* Non 100% atomic commits

Many thanks

Kind regards!