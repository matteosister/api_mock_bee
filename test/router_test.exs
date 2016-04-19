defmodule ApiMockBee.RouterTest do
  use ExUnit.Case
  use Plug.Test

  alias ApiMockBee.Router
  @opts Router.init([])

  test "returns welcome" do
    conn = conn(:get, "/", "")
           |> Router.call(@opts)

    assert conn.state == :sent
    assert conn.status == 200
    assert conn.resp_body =~ "Hello world!"
  end

  test "simple configuration with a single get" do

  end
end
