defmodule ApiMockBee.Conf.Response do
  use ApiMockBee.Aliases

  defstruct \
    status_code: 200,
    body: "Hello world!"

  def new do
    %Response{}
  end
end
