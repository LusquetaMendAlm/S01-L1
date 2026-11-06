import java.util.HashMap;

interface Sobrenatural {
    void manifestar();
}

class Alienigena implements Sobrenatural {

    private String nome;

    public Alienigena(String nome) {
        this.nome = nome;
    }

    @Override
    public void manifestar() {
        System.out.println(nome + " surge querendo estudar a Ayase!");
    }
}

class EspiritoYoukai implements Sobrenatural {

    private String nome;

    public EspiritoYoukai(String nome) {
        this.nome = nome;
    }

    @Override
    public void manifestar() {
        System.out.println(nome + " surge emanando uma energia sobrenatural sinistra!");
    }
}

class MapaDeAvistamentos {

    private HashMap<String, Sobrenatural> avistamentos;

    public MapaDeAvistamentos() 
    {
        this.avistamentos = new HashMap<>();
    }

    public void registrar(String local, Sobrenatural ser) 
    {
        avistamentos.put(local, ser);
    }

    public void investigar(String local) 
    {
        Sobrenatural ser = avistamentos.get(local);

        if (ser == null) {
            System.out.println(local + " está sem vestígio de qualquer tipo de presença maligna.");
        } else {
            System.out.println("Alguma presença maligna foi avistada em " + local + "!");
            ser.manifestar();
        }
    }
}

public class Main {

    public static void main(String[] args) {

        Alienigena alienigena = new Alienigena("Serpo");
        EspiritoYoukai espirito = new EspiritoYoukai("Vovó turbo");

        MapaDeAvistamentos mapa = new MapaDeAvistamentos();

        mapa.registrar("Hospital abandonado", alienigena);
        mapa.registrar("Túnel da Cidade de Shono", espirito);

        mapa.investigar("Túnel da Cidade de Shono");
        mapa.investigar("Hospital abandonado");
        mapa.investigar("Templo");
    }
}