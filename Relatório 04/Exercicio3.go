package main
import "fmt"

func gerarEscalaPlantao(n int) {
	for i := 1; i <= n; i++ {
		dia := 1 + (i-1)*4
		fmt.Printf("Plantao %d: Dia %d do mes\n", i, dia)
	}
}

func main() {
	var quantidade int

	fmt.Println("Digite a quantidade de plantoes: ")
	fmt.Scanln(&quantidade)

	fmt.Println("--- Escala de Plantão Técnico ---")
	gerarEscalaPlantao(quantidade)
}