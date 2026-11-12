data Cafe = Cafe String Double Int

descrever :: Cafe -> String
descrever (Cafe nome preco _) = nome ++ " - R$ " ++ show preco

forca :: Cafe -> String
forca (Cafe _ _ intensidade)
  | intensidade >= 8 = "Forte"
  | intensidade >= 5 = "Equilibrado"
  | otherwise        = "Suave"

precoDoPedido :: Bool -> Cafe -> Double
precoDoPedido comLeite (Cafe _ preco _) =
  if comLeite
    then preco + 2.0
    else preco

main :: IO ()
main = do
  let brasileiro = Cafe "Café brasileiro" 8.0 4
  let colombiano = Cafe "Café colombiano" 10.0 5
  let etiope = Cafe "Café etíope" 12.0 8
  let cafes = [brasileiro, colombiano, etiope]

  putStrLn "--- Cafés do Leblanc ---"
  mapM_ putStrLn (map (\cafe -> descrever cafe ++ " - " ++ forca cafe) cafes)

  putStrLn "--- Café colombiano com leite ---"
  print (precoDoPedido True colombiano)
  putStrLn "--- Café colombiano sem leite ---"
  print (precoDoPedido False colombiano)
