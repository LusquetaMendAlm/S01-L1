use std::io;

fn acertou_o_alvo(palpite: i32, numero_secreto: i32) -> bool {
    (palpite - numero_secreto).abs() <= 5
}

fn main() {
        let numero_secreto: i32 = 18;
    loop {
        let mut entrada = String::new();

        println!("Digite seu palpite:");
        io::stdin().read_line(&mut entrada).expect("Erro ao ler");

        let numero: i32 = entrada.trim().parse().unwrap_or(0);

        let diferenca = (numero - numero_secreto).abs();

        if acertou_o_alvo(numero, numero_secreto) {
            println!("Parabens, voce acertou o alvo!");
            println!("Voce ficou a apenas {} unidades do numero secreto 18.", diferenca);
            break;
        } else {
            println!("Voce passou longe! Tente novamente.");
        }
    }
}