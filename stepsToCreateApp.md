## Step-By-Step instructions to create a basic Calculator application

### What is Swift?
Swift is a powerful and intuitive programming language for macOS, iOS, watchOS and tvOS.
Writing Swift code is interactive and fun, the syntax is concise yet expressive, and 
Swift includes modern features developers love. 
Swift code is safe by design, yet also produces software that runs lightning-fast.
For more Info: [Apple.com/Swift](https://developer.apple.com/swift/) 

### Step 1
Open xcode.
![First Page](https://github.com/AshishProjects/calculatorAreaPerimeterSwift.github.io/raw/master/ScreenShotsNew/a.png)

### Choose The Single View template
![choose template](https://github.com/AshishProjects/calculatorAreaPerimeterSwift.github.io/raw/master/ScreenShotsNew/b.png)

### Enter the ProductName. Like I have written AreaPerimeterCalculator in ProductName. 
SignIn your apple Id to get team name. Select the language, Swift or C#. Then click on Next.
![Add Required fields](https://github.com/AshishProjects/calculatorAreaPerimeterSwift.github.io/raw/master/ScreenShotsNew/c.png)

###  We are ready to start creating our application.
This is the first screen you will see after entering all details. Go to MainStoryBoard to start designing the applications.
![FirstScreen to start](https://github.com/AshishProjects/calculatorAreaPerimeterSwift.github.io/raw/master/ScreenShotsNew/d.png)

### MainStoryBoard overview 1: 
    In here you can select the screen size of the mobile you want to work on. 
(1) At the center is the blank screen where we will add different objects as per your
    requirements.
(2) On the right side below, you can add different objects(Buttons,TextFileds,labels etc). 
(3) Different tabs which will help us to create proper design.
![MainStoryBoard Essential Overview:1]https://github.com/AshishProjects/calculatorAreaPerimeterSwift.github.io/raw/master/ScreenShotsNew/e.png)

### MainStoryBoard overview 2: f
(1) This is the navigation menu where we can navigate to different files.
(2) Play button is use to run the application in Simulator ot Physical device whereas Stop is use to terminate the 
    process.
    We can choose which simulator or phycical device we want to use.
(3) We can choose the layout we want to do our designing from the list of different devices.    
![MainStoryBoard Essential Overview:2](https://github.com/AshishProjects/calculatorAreaPerimeterSwift.github.io/raw/master/ScreenShotsNew/f.png)

### Adding Button in layout: h
(1) Search for button in the filter search and then drag the button on the layout.
(2) Create buttton like these. Double-click on button to edit the name.
![Add buttons](https://github.com/AshishProjects/calculatorAreaPerimeterSwift.github.io/raw/master/ScreenShotsNew/h.png)

### Adding Labes:g
(1) Search for Layout in the filter search and then drag the button on the layout.
(2) Create 4 buttons like this.
![Layout](https://github.com/AshishProjects/calculatorAreaPerimeterSwift.github.io/raw/master/ScreenShotsNew/g.png)

### Adding TextFields And looking at labes: i
(1) Search for text field in the filter and drag it to the layout.
(2) Base, Height asre the labes which i have added opposite to teh textfields.
![textFields and Labels](https://github.com/AshishProjects/calculatorAreaPerimeterSwift.github.io/raw/master/ScreenShotsNew/i.png)

### Button color and Atribte isspectors:j
(1)  Select the button Square, one at the bottom. In the inspector window, select the forth icon Atribute inspector. Go to          background under View.
     click on the white box and select Custome.You will get the color drop-box. Select the background color
     of your choice.
![Button and colors](https://github.com/AshishProjects/calculatorAreaPerimeterSwift.github.io/raw/master/ScreenShotsNew/j.png)

### TextFields and Properties:
(1) In the attribute inspector go to the Text input Traits. Choose keyboard type to number pad.
(2) Type "Values" in Placeholder 
![Textfields and properties](https://github.com/AshishProjects/calculatorAreaPerimeterSwift.github.io/raw/master/ScreenShotsNew/k.png)

### Mobile View:
(1) Click on the play icon to build the project. And you will get a view something like this.
![Mobile Views-1](hhttps://github.com/AshishProjects/calculatorAreaPerimeterSwift.github.io/raw/master/ScreenShotsNew/mobileFirstView.png)

### Connecting TextFields with using assistance editor: TextFiel Connection.
(1) Open the assistance editor form the top right corner. Select the textField, press control and click left-button of the mouse and drag it toward the assistance editor. Select outlset option and specify the name of the outlet. 

![Connecting TextFields with using assistance](https://github.com/AshishProjects/calculatorAreaPerimeterSwift.github.io/raw/master/ScreenShotsNew/TextFieldConnections.png)

### Code Ecample

   ``` Code
   @IBOutlet weak var HeightValue: UITextField!
    @IBOutlet weak var BaseValue: UITextField!

```

### Connecting other button and labels the same way:ShapeField
(1) When the drop box appear select action for all the buttons and specify their names.
(2) Again select the buttons and this time select the Outlet option and specify the names. Thus, creating UIButtons.
![Connecting other objects](https://github.com/AshishProjects/calculatorAreaPerimeterSwift.github.io/raw/master/ScreenShotsNew/ShapesFieldsConnections.png)

   ### Code Examples
    ``` codes
    @IBOutlet weak var SquareButtons: UIButton!
    @IBOutlet weak var RectangleButtons: UIButton!
    @IBOutlet weak var TriangleButtons: UIButton!
    @IBOutlet weak var CircleButtons: UIButton!```  

### After connecting all the objects this is what we are going to get.:AllConnections

![Connections](https://github.com/AshishProjects/calculatorAreaPerimeterSwift.github.io/raw/master/ScreenShotsNew/AllConnections.png)

   ### Code Example
``` 

    //    Shapes buttons connnections
   
    @IBOutlet weak var SquareButtons: UIButton!
    @IBOutlet weak var RectangleButtons: UIButton!
    @IBOutlet weak var TriangleButtons: UIButton!
    @IBOutlet weak var CircleButtons: UIButton!
    
    //    Find buttons connections
    @IBOutlet weak var AreaButtons: UIButton!
    @IBOutlet weak var PerimeterButtons: UIButton!
    
    @IBOutlet weak var ResultCalc: UIButton!
    
   //    labes connections
    @IBOutlet weak var BaseLabelValues: UILabel!
    @IBOutlet weak var HeightLabelValues: UILabel!
    @IBOutlet weak var ResultLabelCalc: UILabel!
    
    
   //    text field connection
    @IBOutlet weak var HeightValue: UITextField!
    @IBOutlet weak var BaseValue: UITextField!
    
   // Buttions Actions connection
    @IBAction func SquareButtonFun(_ sender: Any)
    @IBAction func RectangleButtonFun(_ sender: Any)
    @IBAction func TriangleButtonFun(_ sender: Any) 
    @IBAction func AreaButtonFun(_ sender: Any)
    
```
    
### Defining variables for calculations: AllConnections
(1) I have defined variavled 

   ```
   var BaseNumberValue:Double=0;
    var heightNumberVakue:Double=0 
   ```
    etc which we will you in creating the code
    
    
![Different Variables](https://github.com/AshishProjects/calculatorAreaPerimeterSwift.github.io/raw/master/ScreenShotsNew/AllConnection.png)

   ### Code Example

         
    ``` code
    var BaseNumberValue:Double=0;
    var heightNumberVakue:Double=0;
    var CalculatedAns:Double=0;
    ```
    we will use these variable to do calculaions. They are all in Data type Double
    
    ```code
    var shapeSelectedSquare = false;
    var shapeSelectedRectangle = false;
    var shapeSelectedTriangle = false;
    var shapeSelectedCircle = false;
    var findSelectedArea = false;
    var findSelectedParameter = false;
    ```
    we will use ShapeSelectedSquare and other variable to check which button is pressed.
    They are all in Data Type boolean.
   

### Selecting Shapes and Find by changing their background color from white to red
   
   We will change the background color of the button using
   
   #### yourButtonName.backgroundColor = UIColor.colorName;
   
   here is how you will write it in the button action function
   
     ```
     @IBAction func CircleButtonFun(_ sender: Any) {
        SquareButtons.backgroundColor = UIColor.white;
        
        RectangleButtons.backgroundColor = UIColor.white;
        
        TriangleButtons.backgroundColor = UIColor.white;
        
        CircleButtons.backgroundColor = UIColor.red;
        (changing Circle button color and keepng other white)
       }
     ```
     
       
       

### Adding Conditions on Calculate button clicked
  
  Each shape has different formulas to get area and perimeter. We will specify unique formual of each shapes
  according to selected shape and find (Area or Perimeter)
  
  Here,is an example of finding area of square.
  
  ```
  if(shapeSelectedSquare == true && findSelectedArea == true)
        {
            
            if(BaseValue.text != "" && HeightValue.text != "")
            {
                BaseNumberValue = Double(BaseValue.text!)!
                
                heightNumberVakue = Double(HeightValue.text!)!
                
                CalculatedAns = BaseNumberValue * heightNumberVakue;
                ResultCalc.text = String(CalculatedAns);
                
                BaseValue.text = "";    we are 
                HeightValue.text = "";
                BaseNumberValue = 0;
                heightNumberVakue = 0;
                
                
            }
        }

  ```
    
  Just like this we will add different conditions according to our requirements and formulas 
  
  Here, is some more examples
  
  ```
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
        
  
  ```
  
 ### Changing the labes text according to the shapes requirements
 
 Now, we will change to lables base and height text to sides for Square and radius for Circle
  like 
  ```
  baseVale.text = "Radius";

  ```
  ### More Examples
  
  ```
  @IBAction func SquareButtonFun(_ sender: Any) {
        
        RectangleButton.backgroundColor = UIColor.white;
        
        
        SquareButton1.backgroundColor = UIColor.red;
        
        TriangleButton.backgroundColor = UIColor.white;
        
        CircleButton.backgroundColor = UIColor.white;
        
        shapeSelectedSquare = true;
        
        BaseLabelText.text = "Sides";   // here are changing base to side
        HeightLabelText.text = "Sides";  // here are changing height to side
        HeightLabelText.isHidden = false; 
        HeightValue.isHidden = false;
        
        
        
    }
  
  ```
 Similarly we will add conditions in other button action function according to rquirement.
 
 ### Mobile View: Enter value to get Perimeter of Circle -  CalcCircle Perimeter
 
 ![Circle Perimeter 1](https://github.com/AshishProjects/SwiftCalcArea/raw/master/ScreenShotsNew/EnterValueToGetPerimeterOfCircle.png)
 
![Circle Perimeter 2](https://github.com/AshishProjects/SwiftCalcArea/raw/master/ScreenShotsNew/CalcCirclePerimeter.png)

### Errors
![Errors](https://github.com/AshishProjects/SwiftCalcArea/raw/master/ScreenShotsNew/errors.png)

You might come across errors like
#### Can't find keyplane that supports type 4 for keyboard iPhone-PortraitTruffle-NumberPad; using 20615_PortraitTruffle_iPhone-Simple-Pad_Default

It is sometimes due to the versions of xcode and devices.
here is a link which will help you to understand and resolve the error
[StackOverflow link](https://stackoverflow.com/questions/25842168/cant-find-keyplane-that-supports-type-4-for-keyboard-iphone-portrait-numberpad)
OR

#### invalidating cache xcode
   Thhis is usually the cahche that don't let the application to get updated.
   
   [stackOverflow](https://stackoverflow.com/questions/5714372/how-to-empty-caches-and-clean-all-targets-xcode-4-and-later)

 
 ### References
 
 [Globalnerdy](http://www.globalnerdy.com/2015/04/27/how-to-program-an-ios-text-field-that-takes-only-numeric-input-or-specific-characters-with-a-maximum-length/)

 [Change Button Background](How to shortly change button background when button is pressed? : iOSProgramming)
 
 [Xcode tutorial](https://codewithchris.com/xcode-tutorial-user-interaction/)
 
 [Adding tow number](https://www.youtube.com/watch?v=bkjYqy-Inro)

[Youtube calculator App](https://www.youtube.com/watch?v=AG2QDwmj64A)
