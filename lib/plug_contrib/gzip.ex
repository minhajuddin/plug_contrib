defmodule PlugContrib.Gzip do
  @moduledoc """
  Use this plug to gzip your responses, just include it in your controller or pipeline
  like below:

  ## Example
  ```
  plug PlugContrib.Gzip
  ```
  """
  import Plug.Conn

  def init(opts), do: opts

  def call(conn, _opts) do
    cond do
      accepts_gzip?(conn) -> register_before_send(conn, &gzip/1)
      true                -> conn
    end
  end

  defp accepts_gzip?(conn) do
    accept_encoding = get_req_header(conn, "accept-encoding")
                      |> Enum.join(",")
                      |> String.downcase
    String.contains?(accept_encoding, "gzip")
  end

  defp gzip(conn) do
    conn = put_resp_header(conn, "Content-Encoding", "gzip")
    %{conn | resp_body: :zlib.gzip(conn.resp_body)}
  end
end
