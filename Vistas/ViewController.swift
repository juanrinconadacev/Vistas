
import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var saludo: UILabel!
    
    override func viewDidLoad() {
        greet(name: load())
    }

    @IBAction func nameChanged(_ sender: UITextField) {
        let texto = sender.text ?? "persona"
        greet(name: texto)
        save(name: texto)
    }
    
    func save(name: String) {
        UserDefaults.standard.set(name, forKey: "name")
    }
    
    func load() -> String {
        if let name = UserDefaults.standard.string(forKey: "name") {
            return name
        } else {
            return ""
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

