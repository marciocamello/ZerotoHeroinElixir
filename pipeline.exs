input = "halo@Gmail.com,HALO@Gmail.com,halo2@GAMIL.com"

IO.puts input 
|> String.downcase() 
|> String.split(",") 
|> Enum.uniq