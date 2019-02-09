//
//  ViewController.swift
//  area_volume_calculator
//
//  Created by Ashish on 2019-02-07.
//  Copyright © 2019 Ashish. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var BaseNumberValue:Double=0;
    var heightNumberVakue:Double=0;
//    var SideNumberValue:Double=0;
    var CalculatedAns:Double=0;
    
//    @IBOutlet weak var SideLabelText: UILabel!
    @IBOutlet weak var HeightLabelText: UILabel!
    @IBOutlet weak var BaseLabelText: UILabel!
    var shapeSelectedSquare = false;
    var shapeSelectedRectangle = false;
    var shapeSelectedTriangle = false;
    var shapeSelectedCircle = false;
    var findSelectedArea = false;
    var findSelectedParameter = false;
    
//    @IBOutlet weak var SideValue: UITextField!
    @IBOutlet weak var BaseValue: UITextField!
    
    @IBOutlet weak var HeightValue: UITextField!
    
    @IBOutlet weak var ResultCalc: UILabel!
    

    @IBOutlet weak var SquareButton1: UIButton!
    @IBOutlet weak var RectangleButton: UIButton!
    @IBOutlet weak var TriangleButton: UIButton!
    @IBOutlet weak var CircleButton: UIButton!
    
    @IBOutlet weak var ParameterButton: UIButton!
    @IBOutlet weak var AreaButton: UIButton!


    
    
    @IBAction func SquareButtonFun(_ sender: Any) {
        
        RectangleButton.backgroundColor = UIColor.white;
        
        
        SquareButton1.backgroundColor = UIColor.red;
        
        TriangleButton.backgroundColor = UIColor.white;
        
        CircleButton.backgroundColor = UIColor.white;
        
        shapeSelectedSquare = true;
        
        BaseLabelText.text = "Sides";
        HeightLabelText.text = "Sides";
        HeightLabelText.isHidden = false;
        HeightValue.isHidden = false;
        
        
        
    }
    
    @IBAction func RectanglwButton(_ sender: Any) {
        
        
         RectangleButton.backgroundColor = UIColor.red;
        
        
        SquareButton1.backgroundColor = UIColor.white;
        
        TriangleButton.backgroundColor = UIColor.white;
        
        CircleButton.backgroundColor = UIColor.white;
        
        shapeSelectedRectangle = true;
        BaseLabelText.text = "Base";
        HeightLabelText.text = "Height";
        HeightLabelText.isHidden = false;
          HeightValue.isHidden = false;

        
   
    }
    
    
    
    
    @IBAction func TriangleButtonFun(_ sender: Any) {
       
        RectangleButton.backgroundColor = UIColor.white;
        
        
        SquareButton1.backgroundColor = UIColor.white;
        
        TriangleButton.backgroundColor = UIColor.red;
        
        CircleButton.backgroundColor = UIColor.white;
        
        
        shapeSelectedTriangle = true;
        
        BaseLabelText.text = "Base";
        HeightLabelText.text = "Height";
          HeightValue.isHidden = false;
        HeightLabelText.isHidden = false;
        
        

    
    }
    
    @IBAction func CircleButtonFun(_ sender: Any) {
        

        RectangleButton.backgroundColor = UIColor.white;
        
        
        SquareButton1.backgroundColor = UIColor.white;
        
        TriangleButton.backgroundColor = UIColor.white;
        
        CircleButton.backgroundColor = UIColor.red;
        
        shapeSelectedCircle = true;
          BaseLabelText.text = "Radius";
        HeightValue.isHidden = true;

        HeightLabelText.isHidden = true;
       
        
        
 

    
    }
    
    @IBAction func ParameterFunButton(_ sender: Any) {
        

        ParameterButton.backgroundColor = UIColor.red;
        AreaButton.backgroundColor = UIColor.white;

        findSelectedParameter = true;
        findSelectedArea = false;
      

//        if(shapeSelectedSquare == true)
//        {
////            SideValue.isHidden = true;
//            HeightLabelText.isHidden = true;
//            HeightValue.isHidden = true;
//        }
//
//        else if(shapeSelectedTriangle == true )
//        {
//
//            HeightLabelText.isHidden = false;
//            HeightValue.isHidden = false;
//                  }
    }
    
    @IBAction func AreaFunButton(_ sender: Any) {
        
        
        
        ParameterButton.backgroundColor = UIColor.white;
        AreaButton.backgroundColor = UIColor.red;
        
        findSelectedArea = true;
        findSelectedParameter = false;
      
       

    }
    
    
    @IBAction func CalculatedResult(_ sender: Any) {
//        Area functions
        if(shapeSelectedSquare == true && findSelectedArea == true)
        {
            
            if(BaseValue.text != "" && HeightValue.text != "")
            {
                BaseNumberValue = Double(BaseValue.text!)!
                
                heightNumberVakue = Double(HeightValue.text!)!
                
                CalculatedAns = BaseNumberValue * heightNumberVakue;
                ResultCalc.text = String(CalculatedAns);
                
                BaseValue.text = "";
                HeightValue.text = "";
                BaseNumberValue = 0;
                heightNumberVakue = 0;
                
                
            }
        }
        
        else if(shapeSelectedRectangle == true && findSelectedArea == true)
        {
            
            if(BaseValue.text != "" && HeightValue.text != "")
            {
                BaseNumberValue = Double(BaseValue.text!)!
                
                heightNumberVakue = Double(HeightValue.text!)!
                
                CalculatedAns = BaseNumberValue * heightNumberVakue;
                ResultCalc.text = String(CalculatedAns);
                
                
                BaseValue.text = "";
                HeightValue.text = "";
                BaseNumberValue = 0;
                heightNumberVakue = 0;
                
            }
        }

        
        else if(shapeSelectedTriangle == true && findSelectedArea == true)
        {
            if(BaseValue.text != "" && HeightValue.text != "")
            {
                BaseNumberValue = Double(BaseValue.text!)!
                
                heightNumberVakue = Double(HeightValue.text!)!
                
                CalculatedAns = 0.5 * BaseNumberValue * heightNumberVakue;
                ResultCalc.text = String(CalculatedAns);
                
                
                BaseValue.text = "";
                HeightValue.text = "";
                BaseNumberValue = 0;
                heightNumberVakue = 0;
                
            }
        }
        
        else if(shapeSelectedCircle == true && findSelectedArea == true)
        {
            
            if(BaseValue.text != "")
            {
                BaseNumberValue = Double(BaseValue.text!)!
                
                
                CalculatedAns = 3.1415 * BaseNumberValue * BaseNumberValue;
                ResultCalc.text = String(CalculatedAns);
                
                
                BaseValue.text = "";
//                HeightValue.text = "";
                BaseNumberValue = 0;
        
                
            }
        }
        
//         Area function Ends
        
//    PARMTER FUNCTIONS
        
        else if(shapeSelectedSquare == true && findSelectedParameter == true)
        {

            if(BaseValue.text != "")
            {
                BaseNumberValue = Double(BaseValue.text!)!

                CalculatedAns = 4 * BaseNumberValue;
                ResultCalc.text = String(CalculatedAns);

                BaseValue.text = "";

            }
        }

        else if(shapeSelectedRectangle == true && findSelectedParameter == true)
        {
            if(BaseValue.text != "" && HeightValue.text != "")
            {
                BaseNumberValue = Double(BaseValue.text!)!

                heightNumberVakue = Double(HeightValue.text!)!

                CalculatedAns = 2 * BaseNumberValue + 2 * heightNumberVakue;
                ResultCalc.text = String(CalculatedAns);


                BaseValue.text = "";
                HeightValue.text = "";
            }
        }


        else if(shapeSelectedTriangle == true && findSelectedParameter == true)
        {

            if(BaseValue.text != "" && HeightValue.text != "" )
            {
                BaseNumberValue = Double(BaseValue.text!)!

                heightNumberVakue = Double(HeightValue.text!)!


                CalculatedAns = BaseNumberValue + heightNumberVakue + BaseNumberValue;
                ResultCalc.text = String(CalculatedAns);


                BaseValue.text = "";
                HeightValue.text = "";
                
            }
        }

        else if(shapeSelectedCircle == true && findSelectedParameter == true)
        {
            if(BaseValue.text != "")
            {
                BaseNumberValue = Double(BaseValue.text!)!

                CalculatedAns = 2 * 3.14159265 * BaseNumberValue;
                ResultCalc.text = String(CalculatedAns);


                BaseValue.text = "";
            }
        }
        
        //         Parameter function Ends
        

    }
    
    
        
    
    
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}

