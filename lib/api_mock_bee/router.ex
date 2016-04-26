defmodule ApiMockBee.Router do
  @moduledoc """
  Plug router
  """
  use Plug.Router
  use ApiMockBee.Aliases
  require Logger

  plug Plug.Static,
    at: "public",
    from: :api_mock_bee,
    only: ~w(js)
  plug :match
  plug Plug.Logger, log: :debug
  plug :dispatch

  def init(_) do
    IO.puts "Api Mock Bee"
  end

  get "/_conf" do
    conn
    |> put_resp_content_type("text/html")
    |> send_resp(200, File.read!(conf_template))
  end

  get "/_conf.json" do
    conn
    |> put_resp_content_type("application/json")
    |> send_resp(200, read_configuration)
  end

  match _ do
    conn
    |> Matcher.match(read_configuration)
    |> send_response(conn)
  end

  defp send_response({:ok, match}, conn) do
    response = match.response
    conn
    |> default_headers
    |> send_resp(response.status_code, response.body)
  end
  defp send_response({:error, _}, conn) do
    conn
    |> default_headers
    |> send_resp(404, "")
  end

  defp default_headers(conn) do
    conn
    |> put_resp_content_type("application/json")
  end

  defp read_configuration do
    File.read!(System.get_env("CONF_FILE") || nil)
  end

  defp templating_folder do
    Path.expand "web/templates"
  end

  defp conf_template do
    templating_folder <> "/conf.html.eex"
  end
end
