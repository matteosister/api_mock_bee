defmodule ApiMockBee.Router do
  use Plug.Router
  use ApiMockBee.Aliases

  plug :match
  plug :dispatch

  def init(_) do
    IO.puts "Api Mock Bee"
  end

  match _ do
    match = Matcher.match(conn)
    response = match.response
    IO.puts "#{match.route} matched - sent #{response.status_code}"
    send_resp(conn, response.status_code, response.body)
  end
end
