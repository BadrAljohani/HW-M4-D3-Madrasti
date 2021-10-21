import UIKit

class ViewController: UIViewController, UITextViewDelegate {
    var isLocked = true
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var labelPhone: UILabel!
    @IBOutlet weak var lableYoutube: UILabel!
    @IBOutlet weak var lableMadrasati: UILabel!
    @IBOutlet weak var textFildeKidsName: UITextField!
    @IBOutlet weak var SwitchMadrasti: UISwitch!
    @IBOutlet weak var SwitchYoutube: UISwitch!
    

    @IBAction func unlockPhone(_ sender: Any) {
       
        if (textField.text != textFildeKidsName.text || textFildeKidsName.text!.isEmpty == true || textField.text!.isEmpty == true) {
            labelPhone.text = "  Not Allowed ❌ "
     
        }
        
        if (textFildeKidsName.text == textField.text && textFildeKidsName.text!.isEmpty == false && textField.text!.isEmpty == false) {
            print("Allowd")
            labelPhone.text = " Allowed ✅ "
        }
    }
    @IBAction func openYoutube(_ sender: Any) {
        if (SwitchYoutube.isOn == true) {
            
            lableYoutube.text = " Allowed ✅ "
            }else{
                lableYoutube.text = " Not Allowed ❌ "
            }
        }
    @IBAction func openMadasti(_ sender: Any) {
        if (SwitchMadrasti.isOn == true) {
            lableMadrasati.text = " Allowed ✅ "
        }else{
            lableMadrasati.text = " Not Allowed ❌ "
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}
