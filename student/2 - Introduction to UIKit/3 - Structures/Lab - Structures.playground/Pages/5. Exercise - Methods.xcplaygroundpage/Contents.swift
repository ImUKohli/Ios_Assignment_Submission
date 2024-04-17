/*:
## Exercise - Methods
 
 A `Book` struct has been created for you below. Add an instance method on `Book` called `description` that will print out facts about the book. Then create an instance of `Book` and call this method on that instance.
 */
struct Book {
    var title: String
    var author: String
    var pages: Int
    var price: Double
    //Instance Method
    func description(){
        print("Book Name: \(title) Author: \(author) Number Of Pages: \(pages) Price:\(price)")
    }
}

var bookOne = Book(title: "A Christmas Tale", author: "Geronimo Stilton", pages: 250, price: 599.0)
bookOne.description()

//:  A `Post` struct has been created for you below, representing a generic social media post. Add a mutating method on `Post` called `like` that will increment `likes` by one. Then create an instance of `Post` and call `like()` on it. Print out the `likes` property before and after calling the method to see whether or not the value was incremented.
struct Post {
    var message: String
    var likes: Int
    var numberOfComments: Int
    // Mutating Method
    
    mutating func like(){
        likes+=1
    }
}
var postOnInstagram = Post(message: "The Boysssss", likes: 79, numberOfComments: 24)
print(postOnInstagram.likes)
postOnInstagram.like()
print(postOnInstagram.likes)
postOnInstagram.like()
print(postOnInstagram.likes)
postOnInstagram.like()
print(postOnInstagram.likes)
postOnInstagram.like()



/*:
[Previous](@previous)  |  page 5 of 10  |  [Next: App Exercise - Workout Functions](@next)
 */
