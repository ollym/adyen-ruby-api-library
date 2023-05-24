require_relative '../service'
module Adyen
  class TerminalSettingsStoreLevelApi < Service
    attr_accessor :service, :version

    def initialize(client, version = DEFAULT_VERSION)
      @service = 'Management'
      @client = client
      @version = version
    end

    def get_terminal_logo(merchantId, reference, headers: {}, queryParams: {})
      endpoint = '/merchants/{merchantId}/stores/{reference}/terminalLogos'.gsub(/{.+?}/, '%s')
      endpoint = endpoint.gsub(%r{^/}, '')
      endpoint = format(endpoint, merchantId, reference)
      endpoint += create_query_string(queryParams)
      action = { method: 'get', url: endpoint }
      @client.call_adyen_api(@service, action, {}, headers, @version)
    end

    def get_terminal_settings(merchantId, reference, headers: {})
      endpoint = '/merchants/{merchantId}/stores/{reference}/terminalSettings'.gsub(/{.+?}/, '%s')
      endpoint = endpoint.gsub(%r{^/}, '')
      endpoint = format(endpoint, merchantId, reference)

      action = { method: 'get', url: endpoint }
      @client.call_adyen_api(@service, action, {}, headers, @version)
    end

    def get_terminal_logo_by_store_id(storeId, headers: {}, queryParams: {})
      endpoint = '/stores/{storeId}/terminalLogos'.gsub(/{.+?}/, '%s')
      endpoint = endpoint.gsub(%r{^/}, '')
      endpoint = format(endpoint, storeId)
      endpoint += create_query_string(queryParams)
      action = { method: 'get', url: endpoint }
      @client.call_adyen_api(@service, action, {}, headers, @version)
    end

    def get_terminal_settings_by_store_id(storeId, headers: {})
      endpoint = '/stores/{storeId}/terminalSettings'.gsub(/{.+?}/, '%s')
      endpoint = endpoint.gsub(%r{^/}, '')
      endpoint = format(endpoint, storeId)

      action = { method: 'get', url: endpoint }
      @client.call_adyen_api(@service, action, {}, headers, @version)
    end

    def update_terminal_logo(request, merchantId, reference, headers: {}, queryParams: {})
      endpoint = '/merchants/{merchantId}/stores/{reference}/terminalLogos'.gsub(/{.+?}/, '%s')
      endpoint = endpoint.gsub(%r{^/}, '')
      endpoint = format(endpoint, merchantId, reference)
      endpoint += create_query_string(queryParams)
      action = { method: 'patch', url: endpoint }
      @client.call_adyen_api(@service, action, request, headers, @version)
    end

    def update_terminal_settings(request, merchantId, reference, headers: {})
      endpoint = '/merchants/{merchantId}/stores/{reference}/terminalSettings'.gsub(/{.+?}/, '%s')
      endpoint = endpoint.gsub(%r{^/}, '')
      endpoint = format(endpoint, merchantId, reference)

      action = { method: 'patch', url: endpoint }
      @client.call_adyen_api(@service, action, request, headers, @version)
    end

    def update_terminal_logo_by_store_id(request, storeId, headers: {}, queryParams: {})
      endpoint = '/stores/{storeId}/terminalLogos'.gsub(/{.+?}/, '%s')
      endpoint = endpoint.gsub(%r{^/}, '')
      endpoint = format(endpoint, storeId)
      endpoint += create_query_string(queryParams)
      action = { method: 'patch', url: endpoint }
      @client.call_adyen_api(@service, action, request, headers, @version)
    end

    def update_terminal_settings_by_store_id(request, storeId, headers: {})
      endpoint = '/stores/{storeId}/terminalSettings'.gsub(/{.+?}/, '%s')
      endpoint = endpoint.gsub(%r{^/}, '')
      endpoint = format(endpoint, storeId)

      action = { method: 'patch', url: endpoint }
      @client.call_adyen_api(@service, action, request, headers, @version)
    end
  end
end
