data Etapa = NaFila | NoBanho | Concluido deriving (Show, Eq)

data Atendimento = Atendimento { cliente :: String, servico :: String, valor :: Double, etapa :: Etapa } deriving (Show)

descrever :: Atendimento -> String
descrever a = cliente a ++ " -> Servico: " ++ servico a ++ " -> Etapa: " ++ show (etapa a) ++ " -> Valor: ¥ " ++ show (valor a)

concluir :: Atendimento -> Atendimento
concluir a = a { etapa = Concluido }

arrecadado :: [Atendimento] -> Double
arrecadado atendimentos =
    let concluidos = filter (\a -> etapa a == Concluido) atendimentos
    in sum (map valor concluidos)

main :: IO ()
main = do
    let atendimento1 = Atendimento { cliente = "Espírito do Rio", servico = "Banquete e Banho de Ouro", valor = 1000, etapa = NoBanho }
    let atendimento2 = Atendimento { cliente = "Espírito idoso", servico = "Banho Aromatico Suave", valor = 250, etapa = NaFila }
    let atendimento3 = Atendimento { cliente = "Espírito Fedorento", servico = "Banho de Ervas Medicinais", valor = 200, etapa = NaFila }

    let listaOriginal = [atendimento1, atendimento2, atendimento3]
    let listaAtualizada = [concluir atendimento1, atendimento2, atendimento3]

    putStrLn "AGENDA DE ATENDIMENTOS"
    mapM_ putStrLn (map descrever listaOriginal)
    putStrLn ("Dinheiro ganho: ¥ " ++ show (arrecadado listaOriginal))

    putStrLn "\nAGENDA ATUALIZADA"
    mapM_ putStrLn (map descrever listaAtualizada)
    putStrLn ("Dinheiro ganho: ¥ " ++ show (arrecadado listaAtualizada))

    putStrLn "\nAGENDA ANTIGA"
    mapM_ putStrLn (map descrever listaOriginal)
    putStrLn ("Dinheiro ganho inicialmente: ¥ " ++ show (arrecadado listaOriginal))