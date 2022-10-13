# Carmen-Sosa
Programación Lógica y Funcional
import qualified System.Win32 as X
import qualified System.Win32 as PAR
import Distribution.Compat.CharParsing (digit)
import System.Win32 (COORD(y))

--1. PROMEDIO DE 3 NUMEROS.

average3Numbers :: Float -> Float -> Float -> Float
average3Numbers x y z = (x+y+z)/3 

--2. DETERMINAR SI EL ULTIMO DIGITO DEL NUMERO X ES 3.
isLastDigit3 :: (Integral a) => a -> Bool
isLastDigit3 dig 
    | mod (dig-3) 10 == 0 = True 
    | otherwise = False

--3.  DETERMINAR SI EL NUMERO X TIENE 3 DIGITOS.
has3Digits :: (Integral a) => a -> Bool
has3Digits dig    
    | (dig > 99 && dig < 1000) = True
    | otherwise = False

--4. DETERMINA SI EL NUMERO X ES UN NUMERO NEGATIVO.
isNegative :: Float -> Bool
isNegative dig    
    | dig > 0 = False 
    | otherwise = True 

--5. SUMA DE LOS DOS DIGITOS QUE COMPONEN AL NUMERO X. 
suma2Digits :: (Integral a) => a -> a  
suma2Digits 0 = 0
suma2Digits n = (n `mod` 10) + suma2Digits (n `div` 10)

--6. DETERMINAR SI LOS 2 DIGITOS QUE COMPONEN AL NUMERO X SON PARES, DONDE X ES UN NUMERO DE 2 DIGITOS.  


--7. DETERMINA SI EL NUMERO X ES ALGUNOS DE LOS PRIMEROS 8 NUMEROS PRIMOS.  
isPrimeNumber :: (Integral a) => a -> Bool
isPrimeNumber dig
    | (dig `mod` 2) == 0 = False
    | otherwise = True

--8. DETERMINAR SI EL NUMERO  X ES DE LOS PRIMEROS 8 NUMEROS PRIMOS Y ADEMAS SI ES PAR.
isEvenAndPrimeNumber :: (Integral a) => a -> Bool
isEvenAndPrimeNumber dig
    | (dig `mod` 2) == 0 = True
    |  dig == 2  = True
    | otherwise = False

--9. DETERMINAR SI EL NUMERO X ES MULTIPLO DEL NUMERO Y.
isMultiple :: (Integral a) => a -> a -> Bool
isMultiple x y 
    | ((x `mod` y ) == 0) = True
    | otherwise = False

--10. DETERMINA SI LOS 2 DIGITOS QUE COMPONEN AL NUMERO X SON IGUALES, X ES NUMERO DE DOS DIGITOS. 
isEqual2Digits :: (Integral a) => a -> Bool
isEqual2Digits dig    
    | (dig < 9 && dig > 100) = error "El numero no es par"
    | otherwise = dig1 == dig2
       
        where
          dig1 = mod dig 10
          dig2 = mod (dig`div`10) 10 

--11. DETERMINA EL NUMERO MAYOR DE 3 NUMEROS X,Y,Z. 
higher :: (Integral a) => a -> a -> a -> a 
higher x y z 
    | x > y && x > z = x
    | y > x && y > z = y
    | z > x && z > y = z

--12. DETERMINA SI DETERMINA SI LA SUMA ENTRE EL NUMERO X Y EL Y ORIGINAN UN NUMERO PAR.
isEvenSum2Number :: (Integral a)=> a -> a ->Bool 
isEvenSum2Number x y 
    | (x+y) `mod` 2 == 0 = True
    | otherwise = False 


--13. LA SUMA DE TODOS LOS DIGITOS DE X Y Y SIENDO ESTOS DE DOS DIGITOS.
sum2Digit2Number :: (Integral a) => a -> a -> a
sum2Digit2Number x y      
    | (x < 9 && x > 100) = error "El numero no es par"
    | (y < 9 && y > 100) = error "El numero no es par"
    | otherwise = x1 + x2 + y1 + y2
        where
            x1 = mod (x`div`10) 10 
            x2 = x `mod` 10
            y1 = mod (y`div`10) 10 
            y2 = y `mod` 10
    

--14. SUMA DE LOS 3 DIGITOS QUE COMPONEN A X.


--15. DETERMINA SI AL MENOS DOS DE LOS TRES DIGITOS DE X SON IGUALES.
equal3Digits:: (Integral a) => a -> Bool
equal3Digits dig    
    | (dig < 100 && dig > 999) = error "El numero no tiene tres cifras"
    | (x==y) = True
    | (x == z) = True
    | (y == z) = True
    | otherwise = False
       
        where
            x = mod (dig`div`100) 100
            y = mod (dig`div`10) 10 
            z = mod dig 10

--16. DETERMINA EN QUE POSICION ESTA EL DIGITO MAYOR DE X. X ES DE 3 DIG.


--17. DETERMINAR SI XS ES PALINDROMO DONDE XS ES UNA LISTA.
palindrome::(Eq a) =>[a] -> Bool
palindrome xs = xs == reverse xs 

--18. DIVISION DE X/Y CUANDO ES UN ERROR SI Y = 0.

--19. ES EL RESULTADO DE LA OPERACION LOGICA DISYUNCION.
xor :: Bool -> Bool -> Bool
xor True True = False
xor True False = True
xor False True = True 
xor False False = False 

--20. ES LA DISTANCIA EXISTENTE ENTRE 2 PUNTOS, SIENDO X Y Y COORDENADAS DE UN PLANO.
distance :: (Floating a) => (a,a) -> (a,a) -> a
distance x y = sqrt (((fst y - fst x)^2) + ((snd y - snd y)^2))
