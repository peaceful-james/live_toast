defmodule DemoWeb.PaymentFormLive do
  @moduledoc false
  use DemoWeb, :live_view

  alias DemoWeb.PaymentFormLive.Inner

  def render(assigns) do
    ~H"""
    <div id="payment-form-live">
      {live_render(@socket, Inner, id: "payment-form-inner")}
    </div>
    """
  end
end
