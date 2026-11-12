data Cafe = Cafe String Double Int

descrever :: Cafe -> String
descrever (Cafe nome preco _) = nome ++ ", ¥ " ++ show preco

forca :: Cafe -> String
forca (Cafe _ _ intensidade) 
    | intensidade >= 8 = "Forte" 
    | intensidade >= 5 = "Normal" 
    | otherwise = "Fraco"

precoDoPedido :: Bool -> Cafe -> Double
precoDoPedido comLeite (Cafe _ preco _) =
    if comLeite
    then preco + 2.0
    else preco

main :: IO ()
main = do
    let cafeFraco = Cafe "Capuccino" 5.50 3
    let cafeNormal = Cafe "Coado" 7.00 6
    let cafeForte = Cafe "Duplo" 6.50 9

    putStrLn (descrever cafeFraco ++ "\nDescrição: " ++ forca cafeFraco)
    putStrLn (descrever cafeNormal ++ "\nDescrição: " ++ forca cafeNormal)
    putStrLn (descrever cafeForte ++ "\nDescrição: " ++ forca cafeForte)

    putStrLn "\nCafé normal com adicional de leite:"
    print (precoDoPedido True cafeNormal)

    putStrLn "Café normal sem adicional de leite:"
    print (precoDoPedido False cafeNormal)