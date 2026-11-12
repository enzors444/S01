data Esboco = Esboco
  { titulo  :: String
  , tecnica :: String
  , horas   :: Int
  }

esbocoMaisRecente :: [Esboco] -> String
esbocoMaisRecente []    = "O caderno está vazio."
esbocoMaisRecente (e:_) = titulo e ++ " - " ++ tecnica e

contarEsbocos :: [Esboco] -> Int
contarEsbocos []        = 0
contarEsbocos (_:resto) = 1 + contarEsbocos resto

horasDesenhando :: [Esboco] -> Int
horasDesenhando []        = 0
horasDesenhando (e:resto) = horas e + horasDesenhando resto

main :: IO ()
main = do
  let caderno =
        [ Esboco { titulo = "Ruínas do castelo", tecnica = "nanquim", horas = 3 }
        , Esboco { titulo = "Corvo na névoa", tecnica = "grafite", horas = 2 }
        , Esboco { titulo = "Floresta à noite", tecnica = "carvão", horas = 4 }
        ]

  putStrLn "--- Caderno de esboços ---"
  putStrLn ("Esboço mais recente: " ++ esbocoMaisRecente caderno)
  putStrLn ("Total de esboços: " ++ show (contarEsbocos caderno))
  putStrLn ("Total de horas: " ++ show (horasDesenhando caderno))
  putStrLn (esbocoMaisRecente [])

  let novoEsboco = Esboco { titulo = "Dragão adormecido", tecnica = "nanquim", horas = 5 }
  let cadernoNovo = novoEsboco : caderno

  putStrLn "--- Caderno original ---"
  putStrLn ("Esboço mais recente: " ++ esbocoMaisRecente caderno)
  putStrLn ("Total de esboços: " ++ show (contarEsbocos caderno))
  putStrLn "--- Caderno novo ---"
  putStrLn ("Esboço mais recente: " ++ esbocoMaisRecente cadernoNovo)
  putStrLn ("Total de esboços: " ++ show (contarEsbocos cadernoNovo))

  -- putStrLn (titulo (head []))
