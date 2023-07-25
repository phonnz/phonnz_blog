defmodule PhonnzBlog.Blog do
    alias PhonnzBlog.Post

    use NimblePublisher,
        build: Post,
        from: "./priv/posts/**/*.md",
        as: :posts,
        highlighters: [:makeup_elixir, :makeup_erlang]
        
    @posts Enum.sort_by(@posts, & &1.date, {:desc, Date})

    def all_posts, do: @posts
end
