# README

I used ruby version: 2.7.0, rails version: 6.0.2 and postgresql to build this appication

To get started, run these commands in terminal
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
