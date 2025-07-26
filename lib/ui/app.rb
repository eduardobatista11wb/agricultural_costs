class App

    def initialize(root)
        @root = root
    end

    login = TkToplevel.new(@root) do
        title "Aplicação"
    end

    def create_automotriz
        TkToplevel.new(login) do
            title 'Cadastro de automotriz'
            TkLabel.new(self) do
                text 'Cadastrar uma automotriz'
                pack { padx 10; pady 10 }
            end
            # Adiciona campos de entrada com labels
            TkLabel.new(self) do
                text 'Nome:'
                pack { padx 10; pady 5; anchor 'w' }
            end

            nome_entry = TkEntry.new(self)
            nome_entry.pack { padx 10; pady 5; fill 'x' }
    
            TkLabel.new(self) do
                text 'Idade:'
                pack { padx 10; pady 5; anchor 'w' }
            end

            idade_entry = TkEntry.new(self)
            idade_entry.pack { padx 10; pady 5; fill 'x' }
    
            TkLabel.new(self) do
                text 'Cidade:'
                pack { padx 10; pady 5; anchor 'w' }
            end

            cidade_entry = TkEntry.new(self)
            cidade_entry.pack { padx 10; pady 5; fill 'x' }
        end
    end

    def create_implement
        TkToplevel.new(login) do
            title 'Cadastro de implemento'
            TkLabel.new(self) do
                text 'Cadastrar um Implemento'
                pack { padx 10; pady 10 }
            end
            # Adiciona campos de entrada com labels
            TkLabel.new(self) do
                text 'Nome:'
                pack { padx 10; pady 5; anchor 'w' }
            end

            nome_entry = TkEntry.new(self)
            nome_entry.pack { padx 10; pady 5; fill 'x' }
    
            TkLabel.new(self) do
                text 'Idade:'
                pack { padx 10; pady 5; anchor 'w' }
            end

            idade_entry = TkEntry.new(self)
            idade_entry.pack { padx 10; pady 5; fill 'x' }
    
            TkLabel.new(self) do
                text 'Cidade:'
                pack { padx 10; pady 5; anchor 'w' }
            end

            cidade_entry = TkEntry.new(self)
            cidade_entry.pack { padx 10; pady 5; fill 'x' }
        end
    end

end