pesoMaximo :: Double
pesoMaximo = 5.0
-- pesoMaximo = 7.0

data Encomenda = Encomenda
  { destinatario :: String
  , peso         :: Double
  , frete        :: Double
  }

descrever :: Encomenda -> String
descrever encomenda =
  destinatario encomenda ++ " - " ++ show (peso encomenda) ++ " kg"
    ++ " - Frete de R$ " ++ show (frete encomenda)

cabemNaVassoura :: [Encomenda] -> [Encomenda]
cabemNaVassoura encomendas =
  filter (\encomenda -> peso encomenda <= pesoMaximo) encomendas

totalDeFretes :: [Encomenda] -> Double
totalDeFretes encomendas = sum (map frete encomendas)

main :: IO ()
main = do
  let encomendas =
        [ Encomenda { destinatario = "Osono", peso = 2.5, frete = 8.0 }
        , Encomenda { destinatario = "Madame", peso = 5.0, frete = 12.0 }
        , Encomenda { destinatario = "Tombo", peso = 6.5, frete = 15.0 }
        , Encomenda { destinatario = "Ursula", peso = 8.0, frete = 18.0 }
        ]
  let entregaveis = cabemNaVassoura encomendas

  putStrLn "--- Encomendas do dia ---"
  mapM_ putStrLn (map descrever encomendas)
  putStrLn "--- Encomendas que cabem na vassoura ---"
  mapM_ putStrLn (map descrever entregaveis)
  putStrLn ("Total de fretes: R$ " ++ show (totalDeFretes entregaveis))
