/* Создать перечисление с видами пиццы (хотя бы 4-5 кейсов).

1.Создать структуру пиццы. Она должна содержать стоимость, вид пиццы, толстое или тонкое тесто и добавки 
(например, дополнительно добавить пепперони, помидоры, сыр). Вид пиццы должен быть вложенным типом для 
структуры пиццы.
Подсказка: добавки лучше также сделать перечислением.

2.Создать класс пиццерии, добавить массив с возможными видами пиццы. Переменная с массивом должна быть приватной. Массив задаётся в инициализаторе.

3.Написать в классе пиццерии функции для добавления нового вида пиццы и для получения всех доступных пицц.

4.Создать экземпляр класса пиццерии и добавить в него несколько видов пицц.*/


struct Pizza {
    enum Pizza: String {
    case margarita = "Margarita"
    case pepperoni = "Pepperoni"
    case cheesePizza = "CheesePizza"
    case vegetarian = "Vegetarian"
    case neapolitan = "Neapolitan"
    init? (Pizza: String){
        switch Pizza{
            case "Margarita": self = .margarita
            case "Pepperoni": self = .pepperoni
            case "cheesePizza": self = .cheesePizza
            case "Vegetarian": self = .vegetarian
            case "Neapolitan": self = .neapolitan
            default: return nil
        }
    }
    }
    enum Additives: String{
        case pepperoni  
        case cheese = "cheese"
        case tomatoes
        case ketchup
        init(additives: String){
            switch additives{
                case "pepperoni": self = .pepperoni
                case "cheese": self = .cheese
                case "tomatoes": self = .tomatoes
                case "ketchup": self = .ketchup
                default: self = .ketchup
            }
        }
    }

    var type: Pizza
    var cost: Double
    var pizza_dough: String = "thin"
    var additives: Additives


    func getPizza() {
    print("Название: \(type), стоимость: \(cost), тестo: \(pizza_dough), добавки: \(additives)")
}
}

class Pizzeria {
    private  var type: [Pizza]

    func addPizza(type: Pizza) {
    self.type.append(type)
}
     func getAllPizzas() -> [Pizza] {
        return type
    }

    init(type: [Pizza]) {
    self.type = type
}
}


let margarita = Pizza(type:.margarita, cost:150, pizza_dough:"thick",additives:.cheese)
let cheesePizza = Pizza(type:.cheesePizza, cost:170, pizza_dough:"thin",additives:.tomatoes)
let pizza = Pizzeria(type: [margarita,cheesePizza])  
let allPizzas = pizza.getAllPizzas()
print(allPizzas)