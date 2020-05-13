# README

## Prerequisites
- Ruby version: 2.7.0 
- Rails version: 6.0.2
- Postgresql

## Getting Set Up

- `$ git clone https://github.com/haizhou85/sites-app.git`
- `$ cd sites-app`
- `$ yarn`
- `$ bundle install`
- `$ rails db:create db:migrate db:seed`
- `$ rails s`

## API Endpoints

- Get List of sites

`GET localhost:3000/sites/`

- Get site by id

`GET localhost:3000/sites/{id}`

- Search sites by zipcode

`GET localhost:3000/sites?zipcode=92121`

- Create a site

`POST localhost:3000/sites`

- Update a site

`PUT localhost:3000/sites/{id}`

- Delete a site

`DELETE localhost:3000/sites/{id}`

- Create a site use

`POST localhost:3000/site_uses`

- Update site use

`PUT localhost:3000/site_uses/{id}`

- Delete a site use

`DELETE localhost:3000/sites/{id}`

## Features to be implemented:

If there’s enough time, I would like to implement more features as listed below.

1. Use nested attributes/serializers to build APIs on site_use
2. Testing
3. Search engine
4. Caching
