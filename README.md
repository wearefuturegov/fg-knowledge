# FutureGov knowledge

A rails internal wiki that showcases artefacts, guides and templates for FutureGov.

Uses the [Fae CMS](https://faecms.com/) to manage content. Find it at `/admin`.

Search is powered by the `pg_search` gem. Edits to searchable documents automatically trigger rebuilds of the search index.

## Requirements

- ruby and rails 5.2 or greater
- a running PostgreSQL database (search won't work with SQLite)
- an AWS account with S3, to handle media uploads

## Running it locally

1. Clone the repo, run `bundle install` and `rails db:setup`

more coming...

## Running it on the internet

Works fine on Heroku with no extra steps.

more coming...