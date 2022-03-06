#Project 2: Playing Cards ----
#ATOMIC VECTORS----
die <- c(1, 2, 3, 4, 5, 6)
die
is.vector(die)

five <- 5
is.vector(five)
length(five)
length(die)

#Combining Vector----
int <- c(1L, 5L)
int
text <- c("ace", "hearts")
text

#Doubles----
die <- c(1, 2, 3, 4, 5, 6)
die
#What type of Object----(Some R functions refer to doubles as “numerics,”)
typeof(die)

#Integers----
int <- c(-1L, 2L, 4L)
int

#Characters----
text <- c("Hello",  "World")
text
typeof(text)
typeof("Hello")

#Logicals
3 > 4
logic <- c(TRUE, FALSE, TRUE)
logic
typeof(logic)
typeof(F)

#Complex and Raw----
comp <- c(1 + 1i, 1 + 2i, 1 + 3i)
comp
typeof(comp)

raw(3)
typeof(raw(3))

#Exercise 5.2 (Vector of Cards)
hand <- c("ace", "king", "queen", "jack", "ten")
hand
typeof(hand)

#Attributes----
attributes(die)

#Names
names(die) <- c("one", "two", "three", "four", "five", "six")
names(die)

attributes(die)

die

die+1
names(die) <- c("uno", "dos", "tres", "quatro", "cinco", "seis")
die

#Dim----
dim(die) <- c(2,3)
die

dim(die) <- c(3, 2)
die

dim(die) <- c(1, 2, 3)
die

#Matrices----
m <- matrix(die, nrow = 2)
m
