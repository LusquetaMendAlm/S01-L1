module Depoente
    def depor
      raise NotImplementedError, "O método depor deve ser implementado"
    end
  end
  

  module Detivel
    def ser_detido
      puts "#{nome} foi entregue para Scotland Yard para ser detido."
    end
  end
  
 class Envolvido
    attr_reader :nome
  
    def initialize(nome)
      @nome = nome
    end
  end
  
  class TestemunhaOcular < Envolvido
    include Depoente
  
    def depor
      puts "#{nome}: Vi o sujeito fugindo do local em que o crime ocorreu."
    end
  end
  
  class SuspeitoDoCrime < Envolvido
    include Depoente
    include Detivel
  
    def initialize(nome, alibi)
      super(nome)
      @_alibi = alibi
    end
  
    def depor
      puts "#{nome}: Eu #{@_alibi}."
    end
  end
  
  class Investigacao
    attr_reader :_caso, :_envolvidos
  
    def initialize(caso)
      @_caso = caso
      @_envolvidos = []
    end
  
    def registrar(envolvido)
      @_envolvidos << envolvido
    end
  
    def ouvir_todos
      puts "Caso: #{@_caso}"
  
      @_envolvidos.each do |envolvido|
        envolvido.depor
      end
    end
  
    def acionar_scotland_yard
      detidos = @_envolvidos.select do |envolvido|
        envolvido.respond_to?(:ser_detido)
      end
  
      detidos.each do |envolvido|
        envolvido.ser_detido
      end
    end
  end
  
  testemunha = TestemunhaOcular.new("John Watson")
  suspeito1 = SuspeitoDoCrime.new("James Moriarty", "estava em uma reunião")
  suspeito2 = SuspeitoDoCrime.new("Sra. Hudson", "estava na manicure")
  
  investigacao = Investigacao.new("Furto de arte")
  
  investigacao.registrar(testemunha)
  investigacao.registrar(suspeito1)
  investigacao.registrar(suspeito2)
  
  investigacao.ouvir_todos
  
  puts "\nScotland Yard foi chamada."
  investigacao.acionar_scotland_yard