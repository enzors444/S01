data Etapa = NaFila | NoBanho | Concluido
  deriving (Show, Eq)

data Atendimento = Atendimento
  { cliente :: String
  , servico :: String
  , valor   :: Double
  , etapa   :: Etapa
  }

descrever :: Atendimento -> String
descrever atendimento =
  cliente atendimento ++ " - " ++ servico atendimento
    ++ " - " ++ show (etapa atendimento)

concluir :: Atendimento -> Atendimento
concluir atendimento = atendimento { etapa = Concluido }

arrecadado :: [Atendimento] -> Double
arrecadado atendimentos =
  sum (map valor (filter (\atendimento -> etapa atendimento == Concluido) atendimentos))

main :: IO ()
main = do
  let atendimentoRio =
        Atendimento { cliente = "Espírito do Rio"
                    , servico = "Banho de ervas"
                    , valor   = 40.0
                    , etapa   = NoBanho }
  let atendimentoSemRosto =
        Atendimento { cliente = "Sem-Rosto"
                    , servico = "Banho quente"
                    , valor   = 30.0
                    , etapa   = NoBanho }
  let atendimentoRabanete =
        Atendimento { cliente = "Deus Rabanete"
                    , servico = "Banho de sais"
                    , valor   = 35.0
                    , etapa   = NaFila }

  let atendimentos = [atendimentoRio, atendimentoSemRosto, atendimentoRabanete]
  let atualizados = [concluir atendimentoRio, concluir atendimentoSemRosto, atendimentoRabanete]

  putStrLn "--- Atendimentos originais ---"
  mapM_ putStrLn (map descrever atendimentos)
  putStrLn ("Arrecadado: R$ " ++ show (arrecadado atendimentos))
  putStrLn "--- Atendimentos atualizados ---"
  mapM_ putStrLn (map descrever atualizados)
  putStrLn ("Arrecadado: R$ " ++ show (arrecadado atualizados))
