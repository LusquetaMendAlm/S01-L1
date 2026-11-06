import java.util.ArrayList;

abstract class Monstro {

  private String _nome;

  public Monstro(String nome) 
  {
    this._nome = nome;
  }

  public String getNome() 
  {
    return _nome;
  }

  public abstract String receita();
}

class Slime extends Monstro {

  public Slime(String nome) 
  {
    super(nome);
  }

  @Override
  public String receita() 
  {
      return "Fazer tiras finas desidratadas e depois reidratar para preparar uma macarronada.";
  }
}

class Mandragora extends Monstro {

  public Mandragora(String nome) 
  {
    super(nome);
  }

    @Override
  public String receita() 
  {
    return "Fazer um omelete com a Mandragora e ovos.";
  }
}

class Panela {

  private String _material;

  public Panela(String material) 
  {
    this._material = material;
  }

  public String getMaterial() 
  {
    return _material;
  }
}

class Cozinheiro {

  private String _nome;
  private Panela _panela;
  private ArrayList<Monstro> _ingredientes;

  // Composição - Panela é criada dentro da estrutura de cozinheiro
  public Cozinheiro(String nome, String materialDaPanela) 
  {
    this._nome = nome;
    this._panela = new Panela(materialDaPanela);
    this._ingredientes = new ArrayList<>();
  }
  	
  // Agregação - Monstros são instânciados e depois adicionados
  public void adicionarIngrediente(Monstro monstro) 
  {
    _ingredientes.add(monstro);
  }

  public void servirBanquete() 
  {
    System.out.println("Cozinheiro: " + _nome);
    System.out.println("Material da panela: " + _panela.getMaterial());

    for (Monstro monstro : _ingredientes) {
      System.out.println( "Ingrediente especial: " + monstro.getNome() + " | Como fazer: " + monstro.receita());
    }
  }
}

public class Main {
  public static void main(String[] args) 
  {
    Slime slime = new Slime("Slime");
    Mandragora mandragora = new Mandragora("Mandragora");
    Cozinheiro cozinheiro = new Cozinheiro("Senshi", "Aço Ínox");

    cozinheiro.adicionarIngrediente(slime);
    cozinheiro.adicionarIngrediente(mandragora);

    cozinheiro.servirBanquete();
  }
}