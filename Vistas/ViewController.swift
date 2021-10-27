
import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var saludo: UILabel!
    var user: User = User(name: "", age: 0)
    
    override func viewDidLoad() {
        user = load()
        greet(name: user.name)
    }

    @IBAction func nameChanged(_ sender: UITextField) {
        let texto = sender.text ?? "persona"
        user.name = texto
        greet(name: texto)
        save(name: texto)
        save(user: user)
    }
    
    func save(name: String) {
        UserDefaults.standard.set(name, forKey: "name")
    }
    
    func save(user: User) {
        if let data = try? JSONEncoder().encode(user) {
            UserDefaults.standard.set(data, forKey: "user")
        }
    }
    
    func load() -> String {
        if let name = UserDefaults.standard.string(forKey: "name") {
            return name
        } else {
            return ""
        }
    }
    
    func load() -> User {
        if let data = UserDefaults.standard.object(forKey: "user") as? Data {
            if let user = try? JSONDecoder().decode(User.self, from: data) {
                return user
            } else {
                return User(name: "", age: 0)
            }
        } else {
            return User(name: "", age: 0)
        }
    }
    
    func greet(name: String) {
        if name.isEmpty {
            saludo.text = "Hola!"
        } else {
            saludo.text = "Hola \(name)!"
        }
    }
}

