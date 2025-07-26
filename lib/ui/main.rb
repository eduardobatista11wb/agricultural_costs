require 'tk'
require_relative 'login'

root = TkRoot.new
root.withdraw

login = Login.new(root)

# Pega a largura e altura da tela
# screen_width = root.winfo_screenwidth
# screen_height = root.winfo_screenheight

# Define a janela para ocupar 100% da tela
# login.geometry("#{screen_width}x#{screen_height}+0+0")


# Cria uma nova janela (toplevel)

# Cria uma nova janela (toplevel)
app = TkToplevel.new(root) do
    title "Aplicação"
end


# def myproc
#     puts "The user says OK."
#     exit
# end



# autenticar_btn = TkButton.new(login) do
#    text 'Autenticar'
#    command (proc {
#      email = email_entry.get
#      senha = senha_entry.get
#      if email == '1' && senha == '1'
#        # Esconde os campos de autenticação
#        email_label.pack_forget
#        email_entry.pack_forget
#        senha_label.pack_forget
#        senha_entry.pack_forget
#        autenticar_btn.pack_forget

#        # Abre segunda página
#        TkToplevel.new(login) do
#             title 'Bem-vindo!'
#             TkLabel.new(self) do
#             text 'Login realizado com sucesso! Bem-vindo ao sistema.'
#             pack { padx 20; pady 20 }
#             end
#             TkButton.new(login) do
#                 text 'Criar Automotriz'
#                 command (proc {create_automotriz})
#                 pack { padx 15 ; pady 15; side 'left' }
#             end
#             TkButton.new(login) do
#                 text 'Criar Implemento'
#                 command (proc {create_implement})
#                 pack { padx 15 ; pady 15; side 'left' }
#             end
#             TkButton.new(login) do
#                 text 'Criar Implemento'
#                 command (proc {create_implement})
#                 pack { padx 15 ; pady 15; side 'left' }
#             end
#        end
#      else
#        Tk.messageBox(
#          'type'    => 'ok',
#          'icon'    => 'error',
#          'title'   => 'Erro de autenticação',
#          'message' => 'E-mail ou senha incorretos!'
#        )
#      end
#    })
#    pack { padx 15 ; pady 15; side 'left' }
# end

# btn_OK = TkButton.new(login) do
#     text "OK"
#     borderwidth 5
#     underline 0
#     state "normal"
#     cursor "watch"
#     font TkFont.new('times 20 bold')
#     foreground  "red"
#     activebackground "blue"
#     relief      "groove"
#     command (proc {myproc})
#     pack("side" => "right",  "padx"=> "50", "pady"=> "10")
# end
