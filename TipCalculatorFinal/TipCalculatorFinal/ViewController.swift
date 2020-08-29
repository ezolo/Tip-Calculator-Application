//Turd Co. IOS

import UIKit

class ViewController: UIViewController {
    
    
    // Labels
    @IBOutlet weak var billAmount: UILabel!
    @IBOutlet weak var tipAmount: UILabel!
    @IBOutlet weak var totalPlusTip: UILabel!
    @IBOutlet weak var tipPerPerson: UILabel!
    @IBOutlet weak var totalPerPerson: UILabel!
    @IBOutlet weak var persons: UILabel!
    @IBOutlet weak var tipPercentage: UILabel!
    
    // Outputs
    @IBOutlet weak var tipOutlet: UITextField!
    @IBOutlet weak var tipPerPersonOut: UITextField!
   @IBOutlet weak var totalPerPersonOut: UITextField!
    @IBOutlet weak var totalOut: UITextField!
    
    // Input
    
    @IBOutlet weak var bilAmountField: UITextField!
    
    // variables
    
    var amountDouble = Double(50)
    var sliderValue = 18
    var tipPerc = 0.18
    var tip = Double(9)
    var myTip = Double(9)
    var personss = Int(1)
    
    
    // Sliders
    
    @IBOutlet weak var tipSlider: UISlider!
    @IBOutlet weak var personsSlider: UISlider!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // merp
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // meep
    }
    
    
    @IBAction func tipSliderChanged(sender: UISlider)
    {
        print("tip adjusted")
        sliderValue = Int(sender.value)
        tipPerc = Double(sliderValue) * 0.01
        refresh()
        
    }
    
    @IBAction func personsSlider(sender: UISlider) {
        print("person adjusted")
        
        personss = Int(sender.value)
        persons.text = "(persons)"
        refresh()
    }
    
    func refresh () {
        
        print("refresh requested")
        
        let pctFormatter = NSNumberFormatter()
        pctFormatter.numberStyle = NSNumberFormatterStyle.CurrencyStyle
        
        amountDouble = (bilAmountField.text! as NSString).doubleValue
        
        tip = amountDouble * tipPerc
        
        tipPercentage.text = "(Int(sliderValue)) %"
        tipOutlet.text = pctFormatter.stringFromNumber(tip)
        var result = Double(amountDouble)+Double(tip)
        totalOut.text = pctFormatter.stringFromNumber(result)
        
     var personsDouble = Double(personss)
        tipPerPerson.text = pctFormatter.stringFromNumber(tip/personsDouble)
        myTip = Double(tip/personsDouble)
        totalPerPerson.text = pctFormatter.stringFromNumber(result / personsDouble)
        
        
        
    }
    
    
    
    
    @IBAction func billAmountChanged(sender: AnyObject) {
    
        print("amount changed")
        refresh()
    }
    
    
    
    
    
    
}