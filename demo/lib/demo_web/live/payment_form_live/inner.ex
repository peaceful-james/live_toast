defmodule DemoWeb.PaymentFormLive.Inner do
  @moduledoc false
  use DemoWeb, :live_view

  def render(assigns) do
    ~H"""
    <div id="payment-form-live-inner">
      <button id="payment-form-button" phx-click="payment-form-flash">
        Payment Form Flash
      </button>
      <LiveToast.toast_group flash={@flash} toasts_sync={nil} connected={true} />
    </div>
    """
  end

  def handle_event("payment-form-flash", _params, socket) do
    socket
    |> put_flash(:info, "This is a PaymentForm flash message.")
    |> then(&{:noreply, &1})
  end
end
