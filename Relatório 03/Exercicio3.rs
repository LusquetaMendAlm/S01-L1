use std::io;

fn imprimir_terminados_em(digito: i32, limite_inferior: i32, limite_superior: i32) {
    for i in limite_inferior..=limite_superior {
        if i % 10 == digito {
            println!("{}", i);
        }
    }
}

fn main() {
    let mut entrada = String::new();

    println!("Digite o digito final desejado (0 a 9):");
    io::stdin().read_line(&mut entrada).expect("Erro ao ler");

    let digito: i32 = entrada.trim().parse().unwrap_or(0);

    let mut entrada1 = String::new();

    println!("Digite o limite inferior:");
    io::stdin().read_line(&mut entrada1).expect("Erro ao ler");

    let limite_inferior: i32 = entrada1.trim().parse().unwrap_or(0);

    let mut entrada2 = String::new();

    println!("Digite o limite superior:");
    io::stdin().read_line(&mut entrada2).expect("Erro ao ler");

    let limite_superior: i32 = entrada2.trim().parse().unwrap_or(0);

    println!("Números no intervalo terminados em {}:",digito);
    imprimir_terminados_em(digito, limite_inferior, limite_superior);
}