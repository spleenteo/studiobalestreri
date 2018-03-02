#!/usr/bin/env ruby
require "dato"
require 'dotenv'
Dotenv.load
puts ENV["DATO_API_TOKEN_RW"]
client = Dato::Site::Client.new(ENV["DATO_API_TOKEN_RW"])
puts client

def slugify(c, suffix="")
  if c.present?
    s = suffix.present? ? "-#{suffix}" : ""
    "#{c.parameterize}#{s}"
  else
    nil
  end
end

client.items.all(
  "filter[type]": "626",
  "page[limit]": 2000
).each do |item|
  if !item["slug"].present?
    puts "Update Slug: #{item['title']}"
    puts slugify(item['title'], item['id'])
    client.items.update(item['id'],
      slug: slugify(item['title'], item['id'])
    )
    puts "-----------------------"
  end
end
