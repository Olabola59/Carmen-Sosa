--1. firstToEnd. DEFINIR LA FUNCIÓN DONDE EL PRIMER ELEMENTO 
--DE UNA LISTA (XS) PASE A SER EL ÚLTIMO DE UNA NUEVA LISTA. 

firstToEnd :: [a] -> [a]
firstToEnd [] = error "¡Hey, no puedes utilizar esta función con una lista vacía!"
firstToEnd [x] = [x]
firstToEnd (x:xs) = xs ++ [x]

--2. minAndMax. JUNTA EL MIN Y EL MAX ELEMENTO DE UNA LISTA
minAndMax :: (Ord a) => [a] -> [a]
minAndMax [] = error "¡Hey, no puedes utilizar esta función con una lista vacía!"
minAndMax [x] = [x]
minAndMax (xs) = [dig | dig <- xs, (minimum xs)==dig || (maximum xs)==dig]

--3. minorsFirstElement. UNA LISTA CON LOS ELEMENTOS MENORES 
-- AL PRIMERO. 
minorsFirstElement :: (Ord a) => [a] -> [a]
minorsFirstElement [] = error "¡Hey, no puedes utilizar esta función con una lista vacía!"
minorsFirstElement [x] = []
minorsFirstElement (x:xs) = [dig | dig <- xs, dig < x]

--4. greaterOrEqualFirstElement. LISTA CON LOS ELEMENTOS 
--MAYORES O IGUALES AL PRIMER ELEMENTO DE XS. 
greaterOrEqualFirstElement :: (Ord a) => [a] -> [a]
greaterOrEqualFirstElement [] = error "¡Hey, no puedes utilizar head con una lista vacía!"
greaterOrEqualFirstElement [x] = []
greaterOrEqualFirstElement (x:xs) = [dig | dig <- xs, dig >= x]


--5.minorsToSumFirstAndSecondElem. LISTA DE ELEMENTOS MENORES
--A LA SUMA DEL PRIMER Y SEGUNDO ELEMENTO DE XS SIN TOMAR EN 
--CUENTA LOS PRIMEROS 2 ELEMENTOS.


--6. listSumDuplaToList. LISTA EN LA QUE CADA ELEMENTO ES LA 
--SUMA DE LOS ELEMENTOS DE CADA DUPLA. DONDE XS ES UNA SUMA DE
--DUPLAS. 
listSumDuplaToList :: [(Integer,Integer)] -> [Integer]
listSumDuplaToList [] = error "¡Hey, no puedes utilizar head con una lista vacía!"
listSumDuplaToList (x:xs) = (fst x + snd x) : listSumDuplaToList xs


--7. listMultTripletaToList. LISTA EN LA QUE CADA ELEMENTO ES 
--LA MULTIPLICACIÓN DE LOS ELEMENTOS DE CADA TRIPLETA.
listMultTripletaToList :: (Integral a) => [(a,a,a)] -> [a]
listMultTripletaToList [] = error "¡Hey, no puedes utilizar head con una lista vacía!"
listMultTripletaToList xs = [x*y*z | (x,y,z) <- xs]

--8. changeFstToSnd. LISTA EN DONDE LOS ELEMENTOS DE UNA DUPLA 
--CAMBIAN DE POSICIÓN, DONDE XS ES UNA LISTA DE DUPLAS.
changeFstToSnd::(Integral a)=>[(a,a)]->[(a,a)]
changeFstToSnd [] = []
changeFstToSnd ((x,y):xs) = (y,x):changeFstToSnd xs


--9. sumVectors. VECTOR RESULTANTE DE LA SUMA DE LOS VECTORES 
-- DE XS. DONDE XS ES UNA LISTA DE DUPLAS. 
sumVectors::(Integral a)=> [(a,a)]->(a,a)
sumVectors [(a,b)] = (a,b)
sumVectors ((x1,y1):xs) = (x2+x1,y2+y1)
    where
        (x2,y2)  = sumVectors xs


--10. dividers. LISTA DE DIVISORES DE N DONDE N ES UN NÚMERO.
dividers :: (Integral a) => a -> [a]
dividers x = [dig | dig <- [1..x], (mod x dig)==0]


--11. primeNumbers. UNA LISTA CON LOS NÚMEROS PRIMOS EXISTENTES
-- DE 1 A N, DONDE N ES UN NÚMERO. 

--12. infinitePrimeNumbers. LISTA INFINITA DE NÚMEROS PRIMOS. 
infinitePrimeNumbers :: [Int]
infinitePrimeNumbers = dig [2..]
    where dig (x:xs) = x : dig [n | n <- xs, (mod n x)/=0]
