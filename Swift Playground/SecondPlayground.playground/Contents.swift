import UIKit
import Foundation

var str = "Hello, playground"

// Array of INT
//var number: [Int] = [1,2,3,4,5]
// append = tambah elemen baru di array
//number.append(3) // Hanya untuk variable


// Array of String
//let name: [String] = ["Budi", "Anda", "Andi"]

// Array inside Array
//let address = [["Palmerah", "Kemanggisan", "Serpong"], ["Jakarta", "Tangerang"]]


// animals [2][0]
//print(number)
//print(name)


// ------------------------------------------------------------------------
var musicList: [String] = ["Sucker Punch", "Mine Right Now", "Basic", "Stranger", "Dont Feel Like Crying", "Level Up", "Sight of You"]
musicList.append("Business Dinners")
print(musicList[3]) // print index ke 3 dari array (Stranger)
musicList.remove(at: 2) // hapus index ke 2 (Basic)
print(musicList, "\n")

/*
print("1. \(songs[0])")
print("2. \(songs[1])")
print("3. \(songs[2])")
print("4. \(songs[4])")
print("⭐️5. \(songs[5])") // shortcut emoji : [option]+[command]+[space]
print("6. \(songs[6])")*/

var idx=1
print("Songs List")
print("--------------------------------")
for songs in musicList { // lo print("\(idx). \(songs)")
    if idx==5 {
        print("⭐️\(idx). \(songs)")
    }else{
        print("\(idx). \(songs)")
    }
    idx+=1
}
print("-------------------------------- \n")
//dump(songs)

//  ------------------------------------------------------------------------
// DICTIONARY
// [string:string] -> [key:values]
// [int:string], bebas bisa bermacam"

var movieGenre: [String:[String]] = [:] // membuat array dictionary kosong (pakai : )
movieGenre["Available"] = ["Spiderman", "Avenger", "Frozen"] // assign key dan value
movieGenre["Action"] = ["Triple Frontier", "Fast n Furious", "The Commuter", "Master Chef"]
movieGenre["Drama"] = ["Descendant of the Sun", "Goblin", "Along with the God", "My ID is Gangnam Beauty", "Whats Wrong with Secretary Kim"]
movieGenre["Anime"] = ["Narto", "Doraemon"]


var index=0
for movie in movieGenre {
    print(movie.key) // ambil key saja
    // print(movie.key.first) hanya mengambil satu : Available ( key yang pertama)
    for judulFilm in movie.value {
        print("- \(judulFilm)")
    }
    print("\n")
}


//  ------------------------------------------------------------------------
// SET

var blueFollower: Set<String> = ["😎", "👻", "👩🏻‍🦰", "🤓", "🦊"]
var greenFollower: Set<String> = [] // membuat set kosong
// insert untuk memasukkan value baru
greenFollower.insert("🐶")
greenFollower.insert("🐹")
greenFollower.insert("🦊")
greenFollower.insert("🐼")
greenFollower.insert("🐸")
greenFollower.insert("👻")
greenFollower.insert("🐶") // jika data ada yang sama maka tidak akan dimasukkan ke set ( will not override)


print(blueFollower)
print(greenFollower)
print("Jumlah :", greenFollower.count) // mendapatkan jumlah element dalam set

var sameFollower = blueFollower.intersection(greenFollower)
print("Yang sama : \(sameFollower)") // mengambil element yang sama dari kedua set -> intersection

var allFollower = blueFollower.union(greenFollower)
print("All Follower : \(allFollower)") // menggabungkan semua element dari kedua set -> union


//  ------------------------------------------------------------------------
// OPTIONAL = is a type that represents a missing value or invalid valid. -> Nil
print("\n\n\n\n\n")

/*
var name: String? = "Ricky"
name = nil
print(name)
print(name!) // force unwrapping : paksa ambil value
*/

var name: [String:String] = ["CGK": "Bandara Soekarno Hatta"]
// print(name["CGK"])


var phoneNumber: String? = "082121782777"
phoneNumber = nil
if let number = phoneNumber { // hanya berjalan jika phoneNumber ada nilai ( tidak Nil )
    print("My Phone Number : \(number)")
}else{  // jika nil
    print("No phone number provided")
}

//  ------------------------------------------------------------------------
// ENUM
// Enum = is a data type consisting of a set of named value
print("\n\n\n\n\n")
// define
enum Compass{
    case north
    case south
    case west
    case east
}

var direction: Compass = Compass.east
var direction2: Compass = .west // cara lain tanpa compass

if direction == .east{
    print("Going to west")
}else if direction == .south{
    print("Stay")
}

switch direction {
    case .east:
        print("Going to east")
    case .north:
        print("Going to north")
    case .west:
        print("Going to west")
    case .south:
        print("Going to south")
}

enum Trash{
    case FoodWaste
    case Plastic
    case Paper
    case Metal
    case Glass
    case Rubber
}
enum sampah{
    case plastik, metal, glass
}

var throwTrash: Trash = .Plastic

switch throwTrash{
    case .FoodWaste:
        print("Red Bin")
    case .Plastic:
        print("Blue Bin")
    case .Paper:
        print("White Bin")
    case .Metal:
        print("Grey Bin")
    case .Glass:
        print("Cyan Bin")
    case .Rubber:
        print("Black Bin")
}

//  ------------------------------------------------------------------------
// FUNCTION
print("\n\n\n\n\n")
var myNumber = [5,2,3,6,9]

func printArray(){
    print(myNumber)
}

func printArray(numbers: [Int]){
    for number in numbers {
        print(number)
    }
}

//printArray()
//printArray(numbers: myNumber)

// exponent atau pemangkatan
func exponent(base: Float, exp:Float) -> Float{
    return pow(base, exp)
}

func exponentManual(base:Int, exp:Int) -> Int{
    var hasil = base
    for _ in 1..<exp{// looping sebanyak berapa banyak dari 1, tanpa variable
        hasil *= base
    }
    return hasil
}

exponent(base: 5, exp: 3)
exponentManual(base: 5, exp: 3)
