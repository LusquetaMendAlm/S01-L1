use std::io;

fn calcular_pontuacao(prova1: f64, prova2: f64, redacao: f64) -> f64 {
    let npt = (prova1 + prova2) / 2.0;
    let pf = npt * 0.6 + redacao * 0.4;

    pf
}

fn main() {
    let mut entrada = String::new();

    println!("Digite a nota da Prova Teorica 1:");
    io::stdin().read_line(&mut entrada).expect("Erro ao ler");

    let prova1: f64 = entrada.trim().parse().unwrap_or(0.0);

    let mut entrada1 = String::new();

    println!("Digite a nota da Prova Teorica 2:");
    io::stdin().read_line(&mut entrada1).expect("Erro ao ler");

    let prova2: f64 = entrada1.trim().parse().unwrap_or(0.0);

    let mut entrada2 = String::new();

    println!("Digite a nota da redacao:");
    io::stdin().read_line(&mut entrada2).expect("Erro ao ler");

    let redacao: f64 = entrada2.trim().parse().unwrap_or(0.0);

    let resultado = calcular_pontuacao(prova1, prova2, redacao);

    if resultado >= 60.0 {
        println!("Parabens! Candidato aprovado no processo seletivo.");
        println!("Pontuacao Final: {}", resultado);
    } else {
        println!("Infelizmente o candidato nao atingiu a pontuacao minima de aprovacao.");
        println!("Pontuacao Final: {}", resultado);
    }
}