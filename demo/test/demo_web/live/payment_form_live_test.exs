defmodule DemoWeb.PaymentFormLiveTest do
  @moduledoc false

  use DemoWeb.ConnCase

  import Phoenix.LiveViewTest

  describe "PaymentForm Page" do
    test "clicking the payment form flash button", %{conn: conn} do
      {:ok, view, _html} = live(conn, ~p"/payment-form")

      assert inner_view = find_live_child(view, "payment-form-inner")

      assert inner_view
             |> element("#payment-form-button")
             |> render_click() =~ "This is a PaymentForm flash message."
    end
  end
end
