package main

import "fmt"

func ValidarCodigoRastreio(codigo string) (bool, string) {

	if len(codigo) != 10 {
		return false, "Erro: O codigo de rastreio deve ter exatamente 10 caracteres."
	}

	return true, "Codigo de rastreio registrado no sistema!"
}

func main() {
	
	valido := false
	for valido != true {
		var codigo string

		fmt.Print("Digite o codigo de rastreio: ")
		fmt.Scanln(&codigo)

		var mensagem string
		valido, mensagem = ValidarCodigoRastreio(codigo)

		fmt.Println(mensagem)
	}
}