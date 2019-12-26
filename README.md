# FutureGov knowledge

A rails internal wiki that showcases artefacts, guides and templates for FutureGov.

Uses the [Fae CMS](https://faecms.com/) to manage content. Find it at `/admin`.

Search is powered by the `pg_search` gem. Edits to searchable documents automatically trigger rebuilds of the search index.

Access is gated to users with Google accounts under the right domain.

## Requirements

- ruby and rails 5.2 or greater
- A running PostgreSQL database (search won't work with SQLite)
- An AWS account with S3, to handle media uploads
- A Google API key for login/identity

## Running it locally

1. Clone the repo, run `bundle install` and `rails db:setup`
2. Make sure that API keys are set for Google and AWS. Edit them with `rails credentials:edit`. You need a `master.key` file in the `/config` folder to decrypt credentials.

## Running it on the internet

Works fine on Heroku with no extra steps.

The (encrypted) credentials are checked into the repo, and only a single environment variable must be supplied decrypt them.

1. Deploy master branch to Heroku
2. Make sure the `RAILS_MASTER_KEY` environment variable is set so credentials can be decrypted.
2. Run `rails db:migrate` from the Heroku console to prepare the database

If you run into trouble, check:

- ⚠️ Make sure that the Heroku domain is whitelisted with the Google API key being used
- ⚠️ Make sure that the S3 bucket exists and the bucket name, region and credentials are correct