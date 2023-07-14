/*1.Написать функцию, которая на вход принимает число: сумма, 
которую пользователь хочет положить на вклад, следующий аргумент это годовой процент,
 третий аргумент это срок Функция возвращает сколько денег получит пользователь по итогу.

2.Создать перечисление, которое содержит 3 вида пиццы и создать переменные с 
каждым видом пиццы.
3.Добавить возможность получения названия пиццы через rawValue*/
//Задание 1.
func Dohod(summ: Double, percent: Double, time: Int) -> Double {
  let finalPercent = percent / 100
  let result = summ + (summ * finalPercent * Double(time))
  return result
}

let summ = 14500.0
let finalPercent = 5.7
let time = 15

let finalSumm = Dohod(summ: summ, percent:finalPercent, time: time)
print("Пользователь получит \(finalSumm) по итогу")

//Задание 2.
// enum Pizza: String {
// case margarita = "Margarita"
// case pepperoni = "Pepperoni"
// case cheesePizza = "CheesePizza"
// }


// let pizzaName1 = Pizza.margarita.rawValue
// let pizzaName2 = Pizza.pepperoni.rawValue
// let pizzaName3 = Pizza.cheesePizza.rawValue
// print("The name of the pizza is \(pizzaName1)")
// print("The name of the pizza is \(pizzaName2)")
// print("The name of the pizza is \(pizzaName3)")

// // func getName(pizza: Pizza) -> String {
// //     pizza.rawValue
    
// // }
// // print(getName(pizza: .margarita)) 
// // print(getName(pizza: .pepperoni)) 

// // print(getName(pizza: .cheesePizza)) 