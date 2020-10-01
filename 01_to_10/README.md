## (*) Find the last element of a list. :white_check_mark:
   
(Note that the Lisp transcription of this problem is incorrect.)
   
Example in Haskell:
   
```haskell
λ> myLast [1,2,3,4]
4
λ> myLast ['x','y','z']
'z'
```
[Solution](1.oz)
   
## (*) Find the last but one element of a list. :white_check_mark:
   
(Note that the Lisp transcription of this problem is incorrect.)
   
Example in Haskell:
   
```haskell
λ> myButLast [1,2,3,4]
3
λ> myButLast ['a'..'z']
'y'
```
[Solution](2.oz)
   
## (*) Find the K'th element of a list. The first element in the list is number 1. :white_check_mark:
   
Example:
   
```haskell
* (element-at '(a b c d e) 3)
c
```
Example in Haskell:
   
```haskell
λ> elementAt [1,2,3] 2
2
λ> elementAt "haskell" 5
'e'
```
[Solution](3.oz)
   
## (*) Find the number of elements of a list. :white_check_mark:
   
Example in Haskell:
   
```haskell
λ> myLength [123, 456, 789]
3
λ> myLength "Hello, world!"
13
```
[Solution](4.oz)
   
## (*) Reverse a list. :white_check_mark:
   
Example in Haskell:
   
```haskell
λ> myReverse "A man, a plan, a canal, panama!"
"!amanap ,lanac a ,nalp a ,nam A"
λ> myReverse [1,2,3,4]
[4,3,2,1]
```
[Solution](5.oz)
   
## (*) Find out whether a list is a palindrome. :white_check_mark:

A palindrome can be read forward or backward; e.g. (x a m a x). 
   
Example in Haskell:
   
```haskell
λ> isPalindrome [1,2,3]
False
λ> isPalindrome "madamimadam"
True
λ> isPalindrome [1,2,4,8,16,8,4,2,1]
True
```
[Solution](6.oz)
   
## (**) Flatten a nested list structure.
   
Transform a list, possibly holding lists as elements into a `flat' list by replacing each list with its elements (recursively).
   
Example:
   
```haskell
* (my-flatten '(a (b (c d) e)))
(A B C D E)
```
Example in Haskell:
   
We have to define a new data type, because lists in Haskell are homogeneous. 
   
```haskell
 data NestedList a = Elem a | List [NestedList a]
```
```haskell
λ> flatten (Elem 5)
[5]
λ> flatten (List [Elem 1, List [Elem 2, List [Elem 3, Elem 4], Elem 5]])
[1,2,3,4,5]
λ> flatten (List [])
[]
```

   
## (**) Eliminate consecutive duplicates of list elements.
   
If a list contains repeated elements they should be replaced with a single copy of the element. The order of the elements should not be changed.
   
Example:
   
```haskell
* (compress '(a a a a b c c a a d e e e e))
(A B C A D E)
```
Example in Haskell:
   
```haskell
λ> compress "aaaabccaadeeee"
"abcade"
```
## (**) Pack consecutive duplicates of list elements into sublists.
If a list contains repeated elements they should be placed in separate sublists.
   
Example:
   
```haskell
* (pack '(a a a a b c c a a d e e e e))
((A A A A) (B) (C C) (A A) (D) (E E E E))
```
Example in Haskell:
   
```haskell
λ> pack ['a', 'a', 'a', 'a', 'b', 'c', 'c', 'a', 
             'a', 'd', 'e', 'e', 'e', 'e']
["aaaa","b","cc","aa","d","eeee"]
```
## (*) Run-length encoding of a list.
Use the result of problem P09 to implement the so-called run-length encoding data compression method. Consecutive duplicates of elements are encoded as lists (N E) where N is the number of duplicates of the element E.
   
Example:
   
```haskell
* (encode '(a a a a b c c a a d e e e e))
((4 A) (1 B) (2 C) (2 A) (1 D)(4 E))
```
Example in Haskell:
   
```haskell
λ> encode "aaaabccaadeeee"
[(4,'a'),(1,'b'),(2,'c'),(2,'a'),(1,'d'),(4,'e')]
```
