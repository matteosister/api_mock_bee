defmodule ApiMockBee.Router do
  @moduledoc """
  Plug router
  """

  use Plug.Router
  use ApiMockBee.Aliases
  require Logger

  plug :match
  plug :dispatch
  plug Plug.Logger, log: :debug

  def init(_) do
    IO.puts "Api Mock Bee"
  end

  match _ do
    conn
    |> Matcher.match(read_configuration)
    |> send_response(conn)
  end

  def send_response({:ok, match}, conn) do
    response = match.response
    conn
    |> default_headers
    |> send_resp(response.status_code, response.body)
  end
  def send_response({:error, _}, conn) do
    conn
    |> default_headers
    |> send_resp(400, "")
  end

  defp default_headers(conn) do
    conn
    |> put_resp_header("content-type", "application/json")
  end

  def read_configuration do
    File.read!(System.get_env("CONF_FILE") || nil)
  end
end
