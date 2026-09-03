use std::io;

fn validar_placa(placa: &str) -> bool {
    let mut letra = 0;
    let mut numero = 0;

    for c in placa.chars() {
        if c.is_numeric() {
            numero += 1;
        }
        if c.is_ascii_uppercase() {
            letra += 1;
        }
    }
    
    placa.len() >= 7 && letra >=4 && numero >=2
}

fn main() {
    loop {
        let mut entrada = String::new();

        println!("Digite a placa do veiculo:");
        io::stdin().read_line(&mut entrada).expect("Erro ao ler");

        if validar_placa(entrada.trim()) {
            println!("Placa cadastrada no sistema!");
            break;
        } else {
            println!("Placa invalida! Tente novamente.");
        }
    }
}