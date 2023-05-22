module SiteHelper
    def msg_jumbotron
        case params[:action]
        when 'index'
            "Ultimas perguntas cadastradas"
        when 'questions'
            "Resultado para o termo \"#{params[:term]}\"..."
        when 'subject'
            "Mostrando questões sobre o assunto #{params[:subject]}"
    
        end
    end
end
