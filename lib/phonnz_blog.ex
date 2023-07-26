defmodule PhonnzBlog do
  use Phoenix.Component
  import Phoenix.HTML
  alias PhonnzBlog.Blog

  def post(assigns) do
    ~H"""
    <.layout>
      <%= @post.title %>
      <%= raw @post.body %>
    </.layout>
    """
  end

  def index(assigns) do
    ~H"""
    <.layout>
      <div class="drawer drawer-mobile">
      <input id="my-drawer-2" type="checkbox" class="drawer-toggle" />
      <div class="drawer-content flex justify-center">
        <div class="lg:w-[100vw] max-w-screen-lg lg:pt-4 lg:p-4">
            <div class="flex-1 p-3 md:py-[35]">
            <div class="space-y-2 md:space-y-6">
              <div class="card card-side bg-base-200 shadow-xl" :for={post <- @posts} >
                <%= if post.image do %>
                <figure>
                  <img
                    src={post.image}
                    alt={post.description}
                  />
                </figure>
                <% end %>
                <div class="card-body">
                  <h2 class="card-title"><%= post.title %></h2>
                  <div class="justify-start">
                    <button :for={tag <- post.tags} class="btn btn-xs btn-primary"><%= tag %></button>
                  </div>
                  <div>
                    <%= raw post.body %>
                  </div>
                  <p><%= post.language %></p>
                </div>
              </div>
             </div>
            <div class="divider"></div>
          </div>
        </div>
      </div>
     </div>
    </.layout>
    """
  end

  def layout(assigns) do
    ~H"""
    <html>
    <head>
      <meta charset="utf-8" />
      <meta name="viewport" content="width=device-width" />
      <link rel="stylesheet" href="/assets/app.css" />
      <script type="text/javascript" src="/assets/app.js" />
    </head>
      <body>
        <%= render_slot(@inner_block) %>
      </body>
    </html>
    """
  end
  
  @output_dir "./output"
  File.mkdir_p!(@output_dir)

  def build() do
    posts = Blog.all_posts()

    render_file("index.html", index(%{posts: posts}))

    for post <- posts do
      dir = Path.dirname(post.path) 
      if dir != "." do
        File.mkdir_p!(Path.join([@output_dir, dir]))
      end
      render_file(post.path, post(%{post: post}))
    end

    :ok
  end

  def render_file(path, rendered) do
    safe = Phoenix.HTML.Safe.to_iodata(rendered)
    output = Path.join([@output_dir, path])
    File.write!(output, safe)
  end


end
