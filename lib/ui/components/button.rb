require 'tk'

class Button 

    def initialize(window)
        @window = window
    end

    # def proc2()
    #     command (proc {
    #         email = email_entry.get
    #         senha = senha_entry.get
    #         if email == '1' && senha == '1'
    #         # Esconde os campos de autenticação
    #         email_label.pack_forget
    #         email_entry.pack_forget
    #         senha_label.pack_forget
    #         senha_entry.pack_forget
    #         autenticar_btn.pack_forget
    #         else
    #         Tk.messageBox(
    #             'type'    => 'ok',
    #             'icon'    => 'error',
    #             'title'   => 'Erro de autenticação',
    #             'message' => 'E-mail ou senha incorretos!'
    #         )
    #         end
    #     })
    # end

    def create_button()
        TkButton.new(login) do
            text 'Autenticar'
            pack { padx 15 ; pady 15; side 'left' }
        end
    end

end