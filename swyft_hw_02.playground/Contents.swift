import Foundation

//1. Написать функцию, которая на вход принимает число: сумма, которую пользователь хочет положить на вклад, следующий аргумент — это годовой процент, третий аргумент — это срок функция возвращает сколько денег получит пользователь по итогу.
func bankDeposit(deposit: Double, percent: Double, period: Double)-> Double{
    deposit * pow(1 + (percent/100)/365 , period)
}
print(String(format: "%.02f", bankDeposit(deposit: 1000, percent: 10, period: 365)))


//2.Создать перечисление, которое содержит 3 вида пиццы, и создать переменные с каждым видом пиццы.
enum Pizza: String{
    case margaritta = "Margaritta"
    case gavaii = "Gavaii"
    case pepperoni = "Pepperoni"
}

let pizza1 = Pizza.margaritta
let pizza2: Pizza = .gavaii
let pizza3: Pizza = Pizza.pepperoni


//3. Добавить возможность получения названия пиццы через rawValue.
func getName(pizza: Pizza) -> String{
    pizza.rawValue
}
print(getName(pizza: .pepperoni))
