main = putStrLn "Ahoj Světe!" 

mocnina a b = abs a ^ abs b

dvojnasobek a = a * 2

soucetCtvercu a b = (a^2) + (b^2)

mensi a b = if a < b then a else b

logickySoucet a b = if a then True else if b then True else False

logickySoucet1 a = if a == 0 then False else True

logickySoucet' True _ = True
logickySoucet' _ True = True
logickySoucet' _ _ = False


logickaPodminka a = logickySoucet (a>0) (a<0)

absolutniHodnota a = if a < 0 then (-a) else a

absolutniHodnota' a 
    | a >= 0 = a
    | otherwise = (-a)

signum a
    | a > 0 = 1
    | a == 0 = a
    | otherwise = (-1)

faktorial n = if n > 0 then n * faktorial (n - 1) else 1

faktorial' 0 = 1
faktorial' n = n * faktorial' (n - 1)

faktorial'' n
    | n < 0 = error "Faktorial se ze zaporne hodnoty"
    | n == 0 = 1
    | otherwise = n * faktorial'' (n-1) 
