defmodule OpenIDConnect.ConfigProvider do
  @type provider_id :: term()

  @callback discovery_document(provider_id, opts :: Keyword.t()) :: Map.t()

  @callback config(provider_id, opts :: Keyword.t()) :: Map.t()

  @callback jwk(provider_id, opts :: Keyword.t()) :: JOSE.JWK.t()
end
