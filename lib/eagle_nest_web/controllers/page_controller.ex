defmodule EagleNestWeb.PageController do
  use EagleNestWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
