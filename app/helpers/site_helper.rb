module SiteHelper
    def msg_jumbotron
        case params[:action]
        when 'index'
            "Ultimas perguntas cadastradas"
        when 'questions'
            "Resultado para o termo \"#{sanitize params[:term]}\"..."
        when 'subject'
            "Mostrando questões sobre o assunto #{sanitize params[:subject]}"
    
        end
    end
end
