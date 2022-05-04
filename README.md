# RAILS 7 : pagination and infinite scrolling with rails and the Hotwire stack

The repository is just an example of colby.so [article](https://www.colby.so/posts/pagination-and-infinite-scrolling-with-hotwire).

* Ruby v3.0.1
* Rails v7.0.2.4
* Hotwire stack

* Database creation
```shell
rails db:migrate
```

* Database initialization
```ruby
50.times do |n|
  Widget.create(name: "Widget ##{n}")
end
```

* Launch it
```shell
bin/dev
```

### About

4 paginations examples :
- __old fashion's way__

  using [pagy gem](https://github.com/ddnexus/pagy)

- __navigation with turbo__

  using Turbo Frame in order to only `reload a frame` of the whole page (`turbo_frame_tag`)

- __manual infinite scroll__

  using Turbo Stream in order to `replace`, `remove`, `append` or `prepend` content (`turbo_stream_action_tag`)

- __infinite scrool__

  using Intersection Observer API to autoclick the load more link when visible in the page. With a stimulus controller and `stimulus-use`
