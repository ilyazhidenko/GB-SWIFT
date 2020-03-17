import Cocoa
//Решение квадратного уравнения.
let a = 2
let b = 3
let c = -5
if (a != 0) {
    if (b != 0) && (c != 0){
        let d = (b*b-4*a*c)
        if (d<0) {
            print("No roots")
        } else if (d == 0) {
            let x = (-b)/2*a
            print("root: \(x)")
        } else if (d>0) {
            let x1: Double = ((Double(-b))+sqrt(Double(d)))/2*Double(a)
            let x2: Double = ((Double(-b))-sqrt(Double(d)))/2*Double(a)
            print("Первый корень: \(x1), Второй корень: \(x2)")
        }
    } else if (c == 0) {
        let x1 = 0
        let x2 = (-b)/a
        print(x1,x2)
    } else if (b == 0) && ((a>0)&&(c<0) || (a<0)&&(c>0)) {
        let x = sqrt(Double(Double(-c)/Double(a)))
        print ("Первый корень: +\(x), Второй корень: -\(x)")
    }
} else { print ("Ошибка. Не является квадратным уравнением если a=0!") }


//Даны катеты прямоугольного треугольника. Найти площадь, периметр и гипотенузу треугольника.
let СathetA = 3
let СathetB = 4
let Yardage = (Double)(СathetA * СathetB) / 2.0
let HypotenuseC = sqrt((Double)(СathetA * СathetA) + (Double)(СathetB * СathetB))
let Perimeter = (Double)(СathetB + СathetA) + HypotenuseC
print("Площадь треугольника = \(Yardage), периметр треугольника = \(Perimeter) и длина гипотенузы треугольника равна \(HypotenuseC)")

//Пользователь вводит сумму вклада в банк и годовой процент. Найти сумму вклада через 5 лет.
typealias Ruble = Double
typealias Percent = Double
var AmountOfDeposit : Ruble = 45.0
var MeterYears = 1
let AnnualPercentage : Percent = 10.0
while MeterYears <= 5 {
let OnePercent = AmountOfDeposit / 100.0
let AnnualIncome = OnePercent * AnnualPercentage
AmountOfDeposit = AmountOfDeposit + AnnualIncome
MeterYears += 1
}
print("Сумма вклада через 5 лет равна = \(AmountOfDeposit)")
