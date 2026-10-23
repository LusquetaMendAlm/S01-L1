class Instrumentista
    attr_reader :nome, :instrumento
  
    def initialize(nome, instrumento)
      @nome = nome
      @instrumento = instrumento
    end
  
    def interpretar(peca)
      raise NotImplementedError, "Implemente interpretar na classe filha"
    end
  end
  
  class Solista < Instrumentista
    def interpretar(peca)
      puts "\n#{@nome}, toca #{@instrumento}, interpretando #{peca}."
      puts "Ele conduz a melodia principal."
    end
  end
  
  class Acompanhador < Instrumentista
    def interpretar(peca)
      puts "\n#{@nome}, toca #{@instrumento}, interpretando #{peca}."
      puts "Ele acompanha o ritmo do solista."
    end
  end
  
  class Regente
    attr_reader :nome
  
    def initialize(nome)
      @nome = nome
      @_orquestra = []
    end
  
    def convocar(instrumentista)
      @_orquestra << instrumentista
    end
  
    def reger(peca)
      puts "#{@nome} rege a peça #{peca}.\n"
  
      @_orquestra.each do |instrumentista|
        instrumentista.interpretar(peca)
      end
    end
  
    def escalacao
      @_orquestra.map do |instrumentista|
        "#{instrumentista.class} - #{instrumentista.nome}"
      end
    end
  end
  
  solista = Solista.new("Kaori", "Piano")
  acompanhador = Acompanhador.new("Kousei", "Violino")
  regente = Regente.new("Seiji")
  
  regente.convocar(solista)
  regente.convocar(acompanhador)
  
  regente.reger("Ballade No. 1")
  
  puts "\nEscalação:"
  regente.escalacao.each do |integrante|
    puts integrante
  end
  
  # instrumentista = Instrumentista.new("Pessoa", "Flauta")
  # instrumentista.interpretar("Concerto")