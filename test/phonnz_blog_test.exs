defmodule PhonnzBlogTest do
  use ExUnit.Case
  doctest PhonnzBlog

  test "greets the world" do
    assert PhonnzBlog.hello() == :world
  end
end
