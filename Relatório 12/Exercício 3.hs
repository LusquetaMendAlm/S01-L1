data Esboco = Esboco { titulo :: String, tecnica :: String, horas :: Int } deriving (Show)

esbocoMaisRecente :: [Esboco] -> String
esbocoMaisRecente [] = "O caderno está em branco."
esbocoMaisRecente (e:_) = "Desenho mais novo: \"" ++ titulo e ++ "\" | Técnica usada : " ++ tecnica e

contarEsbocos :: [Esboco] -> Int
contarEsbocos [] = 0
contarEsbocos (_:xs) = 1 + contarEsbocos xs

horasDesenhando :: [Esboco] -> Int
horasDesenhando [] = 0
horasDesenhando (e:xs) = horas e + horasDesenhando xs

main :: IO ()
main = do
    let caderno1 = [ 
            Esboco { titulo = "Cabana na floresta", tecnica = "Aquarela", horas = 15 }, 
            Esboco { titulo = "Ruínas abandonadas", tecnica = "Caneta Nanquim", horas = 4 }, 
            Esboco { titulo = "Orcs migrando", tecnica = "Lápis", horas = 5 } ]

    putStrLn "CADERNO USADO"
    putStrLn (esbocoMaisRecente caderno1)
    putStrLn ("Esboços totais: " ++ show (contarEsbocos caderno1))
    putStrLn ("Duração: " ++ show (horasDesenhando caderno1))

    putStrLn "\nCADERNO NOVO"
    let cadernoVazio = [] :: [Esboco]
    putStrLn (esbocoMaisRecente cadernoVazio)
    -- putStrLn ("Titulo do primeiro no vazio: " ++ titulo (head cadernoVazio)) | Erro porque a lista tá vázia

    let novoEsboco = Esboco { titulo = "Ninho do grifo", tecnica = "Digital", horas = 32 }
    let caderno2 = novoEsboco : caderno1

    putStrLn "\nCADERNO USADO"
    putStrLn (esbocoMaisRecente caderno1)
    putStrLn ("Quantidade de esbocos: " ++ show (contarEsbocos caderno1))

    putStrLn "\nCADERNO NOVO"
    putStrLn (esbocoMaisRecente caderno2)
    putStrLn ("Quantidade de esbocos: " ++ show (contarEsbocos caderno2))