class PhoneWave
    def enviar_dmail(mensagem)
      puts "\nMensagem enviada para o passado: #{mensagem}"
    end
  end
  
  class MembroDoLab
    attr_reader :numero, :nome
  
    def initialize(numero, nome)
      @numero = numero
      @nome = nome
    end
  end
  
  class LaboratorioDeGadgets
    def initialize
      # Phonewave compõe a estrutura do Laboratório.
      @_phonewave = PhoneWave.new
  
      # Membros que já existiam antesm, são agregados ao Laboratório.
      @_membros = []
    end
  
    def admitir(membro)
      @_membros << membro
      puts "Membro #{membro.numero}: #{membro.nome} foi admitido."
    end
  
    def experimento(mensagem)
      puts "\nIniciando experimento."
  
      @_membros.each do |membro|
        puts "Presente: #{membro.numero} - #{membro.nome}"
      end
  
      @_phonewave.enviar_dmail(mensagem)
    end
  end
  
  okabe = MembroDoLab.new(1, "Okabe Rintaro")
  kurisu = MembroDoLab.new(2, "Itaru Hashida")
  
  laboratorio = LaboratorioDeGadgets.new
  
  laboratorio.admitir(okabe)
  laboratorio.admitir(kurisu)
  
  laboratorio.experimento("O experimento foi um sucesso!")