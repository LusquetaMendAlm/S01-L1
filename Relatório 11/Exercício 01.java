abstract class Morador {

    private String nome;

    public Morador(String nome) {
        this.nome = nome;
    }

    public String getNome() {
        return nome;
    }

    public abstract void apresentar();
}

class Mago extends Morador {

    private String feitico;

    public Mago(String nome, String feitico) 
    {
        super(nome);
        this.feitico = feitico;
    }

    @Override
    public void apresentar() {
        System.out.println("O mago " + getNome() + " utiliza o feitiço " + feitico);
    }
}

class DemonioDoFogo extends Morador {

    public DemonioDoFogo(String nome) {
        super(nome);
    }

    @Override
    public void apresentar() {
        System.out.println("O demônio do fogo " + getNome() + " permite que o castelo continue andando.");
    }
}

public class Main {

    public static void main(String[] args) {

        Morador mago = new Mago("Howl", "Metamorfose");
        Morador demonio = new DemonioDoFogo("Calcifer");
        // Morador morador = new Morador("Genérico");

        mago.apresentar();
        demonio.apresentar();

    }
}