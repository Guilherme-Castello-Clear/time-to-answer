class UsersBackoffice::ZipCodeController < UsersBackofficeController
    def show
        puts(">>>>>>>>>>>ZIPCODE: #{params}")
        @cep = CEP.new(params[:zip_code])
    end
end
