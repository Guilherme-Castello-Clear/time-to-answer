module AdminsBackoffice::AdminsHelper
    def translate_attribute(object, method)
        if object && method
            object.model.human_attribute_name(method)
        else
            "Erro: Informe os parâmetros"
        end
    end
end
