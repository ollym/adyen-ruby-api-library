require_relative '../service'
module Adyen
  class ClientKeyCompanyLevelApi < Service
    attr_accessor :service, :version

    def initialize(client, version = DEFAULT_VERSION)
      @service = 'Management'
      @client = client
      @version = version
    end

    def generate_new_client_key(companyId, apiCredentialId, headers: {})
      endpoint = '/companies/{companyId}/apiCredentials/{apiCredentialId}/generateClientKey'.gsub(/{.+?}/, '%s')
      endpoint = endpoint.gsub(%r{^/}, '')
      endpoint = format(endpoint, companyId, apiCredentialId)

      action = { method: 'post', url: endpoint }
      @client.call_adyen_api(@service, action, {}, headers, @version)
    end
  end
end
