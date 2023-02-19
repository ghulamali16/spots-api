# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

## Schema
The schema consists of two tables, reviews and spots.

The spots table has columns for title, description, and price which store information related to a spot. The created_at and updated_at columns are automatically managed by Rails and store timestamps indicating when a spot was created and last updated.

The reviews table has columns for content, rating, spot_id, created_at, and updated_at. The content column stores the text of a review, the rating column stores a numerical rating given to the spot by the reviewer, and the spot_id column stores the ID of the spot that the review is associated with. The created_at and updated_at columns store timestamps indicating when a review was created and last updated.
