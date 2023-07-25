defmodule PhonnzBlog do
  use Phoenix.Component
  import Phoenix.HTML
  alias PhonnzBlog.Blog

  def post(assigns) do
    ~H"""
    <.layout>
      <%= raw @post.body %>
    </.layout>
    """
  end

  def index(assigns) do
    ~H"""
    <.layout>
      <ul>
        <li :for={post <- @posts}>
          <a href={post.path}> <%= post.title %> </a>
        </li>
      </ul>
      <div class="drawer drawer-mobile">
      <input id="my-drawer-2" type="checkbox" class="drawer-toggle" />
      <div class="drawer-content flex justify-center lg:justify-start">
        <div class="lg:w-[60vw] max-w-screen-lg lg:pt-4 lg:p-4">
          <div class="navbar bg-base-100 lg:hidden sticky top-0 w-full z-50">
            <div class="flex-none">
              <label
                for="my-drawer-2"
                class="btn btn-square btn-ghost lg:hidden"
              >
                <svg
                  xmlns="http://www.w3.org/2000/svg"
                  fill="none"
                  viewBox="0 0 24 24"
                  class="inline-block w-5 h-5 stroke-current"
                >
                  <path
                    stroke-linecap="round"
                    stroke-linejoin="round"
                    stroke-width="2"
                    d="M4 6h16M4 12h16M4 18h16"
                  ></path>
                </svg>
              </label>
            </div>
            <div class="flex-1">
              <a class="btn btn-ghost normal-case text-xl" href="./">Sarissa Blog</a>
            </div>
            <div class="flex-none">
              <button
                data-set-theme="winter"
                class="btn btn-sm btn-ghost btn-square"
                data-act-class="btn-active"
              >
                <svg
                  class="inline-block w-4 h-4 fill-current"
                  xmlns="http://www.w3.org/2000/svg"
                  viewBox="0 0 512 512"
                >
                  <title>ionicons-v5-q</title>
                  <path
                    d="M256,118a22,22,0,0,1-22-22V48a22,22,0,0,1,44,0V96A22,22,0,0,1,256,118Z"
                  />
                  <path
                    d="M256,486a22,22,0,0,1-22-22V416a22,22,0,0,1,44,0v48A22,22,0,0,1,256,486Z"
                  />
                  <path
                    d="M369.14,164.86a22,22,0,0,1-15.56-37.55l33.94-33.94a22,22,0,0,1,31.11,31.11l-33.94,33.94A21.93,21.93,0,0,1,369.14,164.86Z"
                  />
                  <path
                    d="M108.92,425.08a22,22,0,0,1-15.55-37.56l33.94-33.94a22,22,0,1,1,31.11,31.11l-33.94,33.94A21.94,21.94,0,0,1,108.92,425.08Z"
                  />
                  <path
                    d="M464,278H416a22,22,0,0,1,0-44h48a22,22,0,0,1,0,44Z"
                  />
                  <path d="M96,278H48a22,22,0,0,1,0-44H96a22,22,0,0,1,0,44Z" />
                  <path
                    d="M403.08,425.08a21.94,21.94,0,0,1-15.56-6.45l-33.94-33.94a22,22,0,0,1,31.11-31.11l33.94,33.94a22,22,0,0,1-15.55,37.56Z"
                  />
                  <path
                    d="M142.86,164.86a21.89,21.89,0,0,1-15.55-6.44L93.37,124.48a22,22,0,0,1,31.11-31.11l33.94,33.94a22,22,0,0,1-15.56,37.55Z"
                  />
                  <path
                    d="M256,358A102,102,0,1,1,358,256,102.12,102.12,0,0,1,256,358Z"
                  />
                </svg>
              </button>
              <button
                data-set-theme="garden"
                class="btn btn-sm btn-ghost btn-square"
                data-act-class="btn-active"
              >
                <svg
                  class="inline-block w-4 h-4 fill-current"
                  xmlns="http://www.w3.org/2000/svg"
                  fill="none"
                  viewBox="0 0 24 24"
                  stroke="currentColor"
                  stroke-width="2"
                >
                  <path
                    stroke-linecap="round"
                    stroke-linejoin="round"
                    d="M12 6.253v13m0-13C10.832 5.477 9.246 5 7.5 5S4.168 5.477 3 6.253v13C4.168 18.477 5.754 18 7.5 18s3.332.477 4.5 1.253m0-13C13.168 5.477 14.754 5 16.5 5c1.747 0 3.332.477 4.5 1.253v13C19.832 18.477 18.247 18 16.5 18c-1.746 0-3.332.477-4.5 1.253"
                  />
                </svg>
              </button>
              <button
                data-set-theme="dark"
                class="btn btn-sm btn-ghost btn-square"
                data-act-class="btn-active"
              >
                <svg
                  class="inline-block w-4 h-4 fill-current"
                  xmlns="http://www.w3.org/2000/svg"
                  viewBox="0 0 512 512"
                >
                  <title>ionicons-v5-j</title>
                  <path
                    d="M152.62,126.77c0-33,4.85-66.35,17.23-94.77C87.54,67.83,32,151.89,32,247.38,32,375.85,136.15,480,264.62,480c95.49,0,179.55-55.54,215.38-137.85-28.42,12.38-61.8,17.23-94.77,17.23C256.76,359.38,152.62,255.24,152.62,126.77Z"
                  />
                </svg>
              </button>
            </div>
          </div>
          <div class="flex-1 p-3 md:py-[35]">
            <div class="space-y-2 md:space-y-6">
              <div class="card card-side bg-base-200 shadow-xl">
                <figure>
                  <img
                    src="https://api.lorem.space/image/movie?w=200&h=280"
                    alt="Movie"
                  />
                </figure>
                <div class="card-body">
                  <h2 class="card-title">Lorem ipsum dolor sit amet</h2>
                  <div class="justify-start">
                    <button class="btn btn-xs btn-primary">Movies</button>
                    <button class="btn btn-xs btn-secondary">Watched</button>
                  </div>
                  <p>
                    Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed
                    do eiusmod tempor incididunt ut labore et dolore magna aliqua.
                  </p>
                </div>
              </div>
              <div class="card card-side bg-base-200 shadow-xl">
                <div class="card-body">
                  <h2 class="card-title">
                    Fringilla est ullamcorper eget nulla facilisi etiam dignissim.
                  </h2>
                  <div class="justify-start">
                    <button class="btn btn-xs btn-accent">Article</button>
                  </div>
                  <p>
                    Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed
                    do eiusmod tempor incididunt ut labore et dolore magna aliqua.
                    Rhoncus dolor purus non enim. Purus viverra accumsan in nisl.
                    Aliquam faucibus purus in massa. In vitae turpis massa sed
                    elementum tempus egestas. Nisl purus in mollis nunc sed.
                    Ullamcorper morbi tincidunt ornare massa eget. Enim nulla
                    aliquet porttitor lacus luctus accumsan. Id neque aliquam
                    vestibulum morbi blandit cursus. Pellentesque eu tincidunt
                    tortor aliquam nulla facilisi cras. Sed augue lacus viverra
                    vitae.
                  </p>
                </div>
              </div>
              <div class="card card-side bg-base-200 shadow-xl">
                <figure>
                  <img
                    src="https://api.lorem.space/image/book?w=200&h=280"
                    alt="Book"
                  />
                </figure>
                <div class="card-body">
                  <h2 class="card-title">Rhoncus dolor purus non enim.</h2>
                  <div class="justify-start">
                    <button class="btn btn-xs btn-error">Books</button>
                    <button class="btn btn-xs btn-success">Author</button>
                  </div>
                  <p>
                    Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed
                    do eiusmod tempor incididunt ut labore et dolore magna aliqua.
                    Rhoncus dolor purus non enim.
                  </p>
                </div>
              </div>
              <div class="card card-side bg-base-200 shadow-xl">
                <div class="card-body">
                  <h2 class="card-title">
                    Elementum pulvinar etiam non quam lacus suspendisse
                  </h2>
                  <div class="justify-start">
                    <button class="btn btn-xs btn-warning">Note</button>
                  </div>
                  <p>
                    Sagittis id consectetur purus ut faucibus pulvinar elementum
                    integer. Massa sed elementum tempus egestas sed. Proin
                    sagittis nisl rhoncus mattis rhoncus urna. Amet volutpat
                    consequat mauris nunc congue nisi vitae suscipit tellus.
                    Posuere urna nec tincidunt praesent semper. Elementum pulvinar
                    etiam non quam lacus suspendisse.
                  </p>
                </div>
              </div>
              
              <div class="flex justify-center">
                <div class="btn-group">
                  <button class="btn">1</button>
                  <button class="btn">2</button>
                  <button class="btn btn-disabled">...</button>
                  <button class="btn">99</button>
                  <button class="btn">100</button>
                </div>
              </div>
            </div>
            <div class="divider"></div>
            <p class="text-sm pl-4">© 1967 - 2022 Sarissa Blog</p>
            <p class="text-xs pl-4">
              Sarissa theme desing by
              <a class="link" href="https://github.com/iozcelik">iozcelik</a>
            </p>
          </div>

        </div>
      </div>
      <div class="drawer-side">
        <label for="my-drawer-2" class="drawer-overlay"></label>
        <div class="overflow-y-auto flex lg:justify-end w-fit lg:w-[40vw]">
          <!-- Sidebar content here -->
          <div class="w-fit p-3 lg:m-6 bg-base-100">
            <!-- avatar start -->
            <div class="avatar w-60">
              <div class="w-16 lg:w-32 rounded-full mx-auto">
                <img src="https://api.lorem.space/image/face?hash=92310" />
              </div>
            </div>
            <!-- avatar end -->
            <h1 class="text-2xl p-2 pl-4">Sarissa Blog</h1>
                        <p class="text-sm pl-4">Responsive Blog Template</p>
            <div class="flex gap-1 justify-center pt-4">
              <a class="btn btn-sm btn-ghost btn-square">
                <svg
                  class="inline-block w-4 h-4 fill-current"
                  viewBox="0 0 24 24"
                  fill="none"
                  stroke="currentColor"
                  stroke-width="2"
                  stroke-linecap="round"
                  stroke-linejoin="round"
                >
                  <path
                    d="M18 2h-3a5 5 0 0 0-5 5v3H7v4h3v8h4v-8h3l1-4h-4V7a1 1 0 0 1 1-1h3z"
                  />
                </svg>
              </a>
              <a class="btn btn-sm btn-ghost btn-square">
                <svg
                  class="inline-block w-4 h-4 fill-current"
                  viewBox="0 0 24 24"
                  fill="none"
                  stroke="currentColor"
                  stroke-width="2"
                  stroke-linecap="round"
                  stroke-linejoin="round"
                >
                  <path
                    d="M23 3a10.9 10.9 0 0 1-3.14 1.53 4.48 4.48 0 0 0-7.86 3v1A10.66 10.66 0 0 1 3 4s-4 9 5 13a11.64 11.64 0 0 1-7 2c9 5 20 0 20-11.5a4.5 4.5 0 0 0-.08-.83A7.72 7.72 0 0 0 23 3z"
                  />
                </svg>
              </a>
              <a
                class="btn btn-sm btn-ghost btn-square"
              >
                <svg
                  class="inline-block w-4 h-4 fill-current"
                  viewBox="0 0 24 24"
                  fill="none"
                  stroke="currentColor"
                  stroke-width="2"
                  stroke-linecap="round"
                  stroke-linejoin="round"
                >
                  <path
                    d="M16 8a6 6 0 0 1 6 6v7h-4v-7a2 2 0 0 0-2-2 2 2 0 0 0-2 2v7h-4v-7a6 6 0 0 1 6-6z"
                  />
                  <rect x="2" y="9" width="4" height="12" />
                  <circle cx="4" cy="4" r="2" />
                </svg>
              </a>
              <a
              class="btn btn-sm btn-ghost btn-square"
            >
            <svg class="inline-block w-4 h-4 fill-current"  viewBox="0 0 24 24"  fill="none"  stroke="currentColor"  stroke-width="2"  stroke-linecap="round"  stroke-linejoin="round">  <path d="M9 19c-5 1.5-5-2.5-7-3m14 6v-3.87a3.37 3.37 0 0 0-.94-2.61c3.14-.35 6.44-1.54 6.44-7A5.44 5.44 0 0 0 20 4.77 5.07 5.07 0 0 0 19.91 1S18.73.65 16 2.48a13.38 13.38 0 0 0-7 0C6.27.65 5.09 1 5.09 1A5.07 5.07 0 0 0 5 4.77a5.44 5.44 0 0 0-1.5 3.78c0 5.42 3.3 6.61 6.44 7A3.37 3.37 0 0 0 9 18.13V22" /></svg>
            </a>
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
