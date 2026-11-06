import java.util.ArrayList;

class ItemDoCardapio {

  private String _nome;
  private double _preco;

  public ItemDoCardapio(String nome, double preco) 
  {
    this._nome = nome;
    this._preco = preco;
  }

  public String getNome() 
  {
    return _nome;
  }

  public double getPreco() 
  {
    return _preco;
  }

  public double precoFinal() 
  {
    return getPreco();
  }
}

class ComboLeblanc extends ItemDoCardapio {

  public ComboLeblanc(String nome, double preco) 
  {
    super(nome, preco);
  }

  @Override
  public double precoFinal() 
  {
    return getPreco() * 0.9;
  }
}

class CafeLeblanc {

  private ArrayList<ItemDoCardapio> _cardapio;

  public CafeLeblanc() 
  {
    this._cardapio = new ArrayList<>();
  }

  public void adicionar(ItemDoCardapio item) 
  {
    _cardapio.add(item);
  }

  public void mostrarCardapio() 
  {
    for (ItemDoCardapio item : _cardapio) {
      System.out.println(
        item.getNome() + ": ¥" + item.precoFinal()
      );
    }
  }
}

public class Main {
  public static void main(String[] args) {

    ItemDoCardapio bebida = new ItemDoCardapio("Capuccino", 5.00);
    ItemDoCardapio prato = new ItemDoCardapio("Yakisoba", 15.00);
    ComboLeblanc combo = new ComboLeblanc("Combo especial", 20.00);
    CafeLeblanc leblanc = new CafeLeblanc();

    leblanc.adicionar(bebida);
    leblanc.adicionar(prato);
    leblanc.adicionar(combo);

    leblanc.mostrarCardapio();
  }
}