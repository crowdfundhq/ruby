module PagSeguro
  class SearchByReference < PagSeguro::Search
    private
    def perform_request_and_serialize
      @response = Request.get(@path, api_version,
        {
          reference: options[:reference],
        },nil, @env)
      @errors = Errors.new(@response)
    end
  end
end
