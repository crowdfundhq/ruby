module PagSeguro
  class SearchByReference < PagSeguro::Search
    private
    def perform_request_and_serialize
      @response = Request.get(@path, api_version,
        {
          reference: options[:reference],
        },{} , @env)
      @errors = Errors.new(@response)
    end
  end
end
