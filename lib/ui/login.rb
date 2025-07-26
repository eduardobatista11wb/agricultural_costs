require_relative 'components/button'

class Login

    def initialize(root)
        @root = root
    end

    login = TkToplevel.new(@root) do
        title "Login"
    end

    email_label = TkLabel.new(login) do
        text 'E-mail:'
        pack { padx 15 ; pady 5; side 'left' }
    end

    email_entry = TkEntry.new(login)
    email_entry.pack { padx 15 ; pady 5; side 'left' }

    senha_label = TkLabel.new(login) do
        text 'Senha:'
        pack { padx 15 ; pady 5; side 'left' }
    end

    senha_entry = TkEntry.new(login)
    senha_entry.pack { padx 15 ; pady 5; side 'left' }

    button = Button.new(login)
    # autenticar_btn = TkButton.new(login) do
    #     text 'Autenticar'
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
    #     pack { padx 15 ; pady 15; side 'left' }
    # end

end