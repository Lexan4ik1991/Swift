/*1.Создать протокол для меню. Протокол должен содержать стоимость и наименование. 
Стоимость и название должны быть get-only.
Создайте класс кафе, в нём должен быть массив с наименованиями меню и инициализатор. 
Подпишите структуру чая с прошлого занятия на протокол из первого пункта. 
В качестве name должен быть вид чая и “tea”. 
Например, для чёрного чая должно быть black tea, а для зелёного green tea.
2.Создайте ещё 3 кафе, для которых класс Cafe будет родительским.
3.Добавить в родительский класс функцию (add) по добавлению новой позиции в меню. 
Саму переменную меню сделать приватной, если она ещё таковой не является.
4.Сделать так, чтобы в первом из трёх классов наследников (например, FirstCafe) функция add помимо того, 
что выполняла всё тоже самое, что и в родительском классе, печатала в консоль стоимость добавляемой позиции.
5.Создать класс автомата с едой, не реализовывать в нём ни методов, ни свойств, однако, 
этот класс должен уметь делать всё тоже самое, что и FirstCafe.
6.Сделать так, чтобы от класса автомата с напитками нельзя было наследоваться.
*/

protocol Menu {
    var cost: Double { get }
    var name: String { get }
}

class Cafe {
    private var menu: [Menu]
    
    init(menu: [Menu]) {
        self.menu = menu
    }
    
    func add(item: Menu) {
        menu.append(item)
    }
}

struct Tea: Menu {
    let name: String
    let cost: Double
    
    init(name: String, cost: Double) {
        self.name = name + " tea"
        self.cost = cost
    }
}

class FirstCafe: Cafe {
    override func add(item: Menu) {
        super.add(item: item)
        print("Cost of added item: \(item.cost)")
    }
}
class SecondCafe: Cafe{}
class ThirdCafe: Cafe{}
let blackTea = Tea(name: "black", cost: 2.5)
let greenTea = Tea(name: "green", cost: 3.0)
let cafe = Cafe(menu: [])
cafe.add(item: blackTea)
cafe.add(item: greenTea)

let firstCafe = FirstCafe(menu: [])
firstCafe.add(item: blackTea)
firstCafe.add(item: greenTea)

final class VeidingMashine:FirstCafe{}

