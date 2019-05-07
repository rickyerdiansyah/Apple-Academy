import Foundation


// Practice Challenge
/*
 Story: Digital Library
 You a book lover and now you have a ton of books.
 You need to manage all your books so that you not lost when finding a certain book type.
 You also want to build your personal library with system to manage your library.
 */


// Variable and Data Types
/*
 Your library need basic information to be displayed on the system
 Please specify, the library name, number of book owned, establish date and place,
 rate of book rent each day, opening hour, closing hour,
 Hint: use var and let to declare variables and constants, use data type
 */



// Operations
/*
 1. Please add number of book you own by 10
 2. Print your basic information in single line
 example: "mylibrary is established in ... and has .... books"
 3. You have 84 Drama books. One bookshelf can have 40 books. Calculate how many shelves are need and how many remainder (mod) from it?
 */
let libraryName: String = "myLibrary"
let date: String = "3 Mei 2019"
let place: String = "Tangerang"
var rate: Float
let openHour: String = "07.00"
let closeHour: String = "21.00"

var books: Int = 84
var numberOfShelf: Int = 84 / 40
var bookshelf: Int = 40

books += 10
var result: Int = books % bookshelf

func menu() {
    // multiple line print
    print("""
        1. Add books
        2. View books
        3. About
        4. Exit
    """)
}


print("\(libraryName) is established in \(date) and has \(books) books")
print("Remainder : \(result)")


let balance: Int? = nil
if balance == nil {
    print("BOKEK COY")
}else {
    print("Nasebbbb")
}

let fiction: Int = 60
let genre: Int = 40

if genre <= bookshelf {
    print("1 bookshelf is enough")
}else if genre >= bookshelf {
    print("need more bookshelf!")
}



// Conditional
/*
 1. You want to analyse how many bookselves are need for a certain genre depending of its number
 Let say that your library have 60 fiction books
 if a genre has 40 books, print "1 bookshelf is enough"
 if 80 books, print "you need 2 bookshelves"
 if more than 100, print "you need many bookshelves"
 
 2. When visitor rent your book, you want to apply rental fee based on number of days.
 Your visitor input the book title and number of days they want to borrow
 Lets say
 if you rent a book for less than 3 days, print "Rental fee is 3000"
 if you rent a book for 4-6 days, print "Rental fee is 4500"
 if you rent a book for 7 days, print "Rental fee is 5500"
 if more than 7 days, print "Please put valid number"
 */


// Collections
/*
 You have many book genres and you want to build catalog of that genres
 Use following information and create collection from it
 Genres:
 Drama: 84
 Science fictions: 142
 Horror: 57
 Mystery: 24
 Self help: 75
 Create set for your genres.
 1. Create dictionary to get number of books for each genre
 2. Let say you have 10 titles (specify by yourself). Create array from it. (You can add more if you want)
 */



// Iterations
/*
 You want to display all your genres and sample of books you own
 1. Iterate your dictionary and array you have with for-in and print the value
 */
