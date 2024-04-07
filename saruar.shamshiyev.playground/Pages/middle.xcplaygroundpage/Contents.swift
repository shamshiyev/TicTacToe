

// Классы
// 1
class Rectangle  {
    var height : Int
    var width : Int
    
    init(height: Int, width: Int) {
        self.height = height
        self.width = width
    }
    
    func area () -> String {
        return ("Площадь прямоугольника равна \(width * height) см2")
    }
}

let rectangle1 = Rectangle(height: 4, width: 5)
let rectangle2 = Rectangle(height: 6, width: 8)

//print (rectangle1.area())
//print (rectangle2.area())

// 2
class Book  {
    var name : String
    var year : Int
    var author : String
    
    init(name: String, year: Int, author: String) {
        self.name = name
        self.year = year
        self.author = author
    }
    
    func giveInfo () -> String {
        return ("Книга \(name) издана в \(year) году автором \(author)")
    }
 }

let book1 = Book(name: "1984", year: 1949, author: "Джордж Оруэлл")
let book2 = Book(name: "Идиот", year: 1869, author: "Федор Достоевский")

//print (book1.giveInfo())
//print (book2.giveInfo())

// 3
class Student  {
    private var name: String
    private var age: Int
    private var averageScore: Double

      init(name: String, age: Int, averageScore: Double) {
          self.name = name
          self.age = age
          self.averageScore = averageScore
      }

      func setName(name: String) {
          self.name = name
      }

      func getName() -> String {
          return self.name
      }

      func setAge(age: Int) {
          self.age = age
      }

      func getAge() -> Int {
          return self.age
      }

      func setAverageScore(averageScore: Double) {
              self.averageScore = averageScore
      }

      func getAverageScore() -> Double {
          if (averageScore < 0) {
              return 0.0
          } else if (averageScore > 5) {
              return 5.0
          } else {
              return self.averageScore
          }
      }
}

var student1 = Student(name: "Alex", age: 22, averageScore: 4.6)
print (student1.getAverageScore())


// 4
class BankAccount {
    var accountNumber : Int
    private var balance : Double
    
    init(accountNumber: Int, balance: Double) {
        self.accountNumber = accountNumber
        self.balance = balance
    }
    
    func replenishment (amount : Double) -> String {
        balance += amount
        return ("Пополнение. Остаток на счету - \(balance)")
    }
    
    func withDrawal (amount : Double) -> String {
        if (balance - amount >= 0) {
            balance -= amount
            return ("Снятие. Остаток на счету - \(balance)")
        } else {
            return ("Недостаточно средств")
        }
    }
}

let myBankAccount = BankAccount(accountNumber: 4240, balance:  50000)
//print (myBankAccount.replenishment(amount: 5000))
//print (myBankAccount.withDrawal(amount: 32141))
//print (myBankAccount.withDrawal(amount: 50000))



