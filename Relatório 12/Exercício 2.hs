pesoMaximo :: Double
pesoMaximo = 10.0
-- pesoMaximo = 15.0 | Dá erro porque a variável já foi definida antes

data Encomenda = Encomenda {destinatario :: String, peso :: Double, frete :: Double} deriving (Show)

descrever :: Encomenda -> String
descrever e = "Destinatario: " ++ destinatario e ++ " | Peso: " ++ show (peso e) ++ " kg | Frete: ¥ " ++ show (frete e)

cabemNaVassoura :: [Encomenda] -> [Encomenda]
cabemNaVassoura = filter (\e -> peso e <= pesoMaximo)

totalDeFretes :: [Encomenda] -> Double
totalDeFretes encomendas = sum (map frete encomendas)

main :: IO ()
main = do
    let encomendas = [
            Encomenda { destinatario = "Papelaria", peso = 10, frete = 45.10 }, 
            Encomenda { destinatario = "Construção", peso = 15, frete = 30.35 }, 
            Encomenda { destinatario = "Lojinha", peso = 5, frete = 25.99 }, 
            Encomenda { destinatario = "Hospital", peso = 2, frete = 15 }, 
            Encomenda { destinatario = "Restaurante", peso = 4, frete = 21.2 }]

    putStrLn "LISTA DE ENCONMENDAS DO DIA"
    mapM_ putStrLn (map descrever encomendas)
    let entregaveis = cabemNaVassoura encomendas

    putStrLn "\nENTREGAS QUE A VASSOURA AGUENTA"
    mapM_ putStrLn (map descrever entregaveis)

    putStrLn "\nTOTAL DE DINHEIRO RECEBIDO PELO FRETE"
    putStrLn ("Total: ¥  " ++ show (totalDeFretes entregaveis))