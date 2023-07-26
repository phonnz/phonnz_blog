defmodule PhonnzBlog.Post do
  defstruct [:id, :author, :title, :body, :tags, :date, :path, :language, :image, :description, :top_uri, :right_uri, :down_uri, :left_uri]
  @enforce_keys [:id, :author, :title, :body, :tags, :date, :path, :language]

  def build(filename, attrs, body) do
    path = Path.rootname(filename)
    [year, month_day_id] = path |> Path.split() |> Enum.take(-2)
    path = path <> ".html"
    [month, day, id] = String.split(month_day_id, "-", parts: 3)
    date = Date.from_iso8601!("#{year}-#{month}-#{day}")
    struct!(__MODULE__, [id: id, date: date, body: body, path: path] ++ Map.to_list(attrs))
  end
end
  
