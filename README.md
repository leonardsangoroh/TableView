# Table View
Through this project, I have learnt how to programmatically build a table view and its main components

## iOS Version
This Table View was built and run on iOS 15.0

## Initial setup (Remove Storyboard and its Project links)
1. Go to info
    - Select 'Main storyboard file base name'
    - Delete it
2. Go to Application Scene Manifest
    - Open it up until you get to 'Storyboard Name'
    - Delete it
3. Go to Xcode sidebar
    - Delete the main storyboard 'main'
4. Go to the 'SceneDelegate' file, inside the scene function, remove the existing and copy paste the following code;


        guard let windowScene = (scene as? UIWindowScene) else {return}
        let window = UIWindow(windowScene: windowScene)
        
        let vc = ViewController()
        let nav = UINavigationController(rootViewController: vc)
        
        window.rootViewController = nav
        
        self.window = window
        self.window?.makeKeyAndVisible()

## Screenshot(s)

### Screenshot - Final Outcome of the Project
<img width="385" alt="Screenshot 2024-04-14 at 23 57 00" src="https://github.com/leonardsangoroh/TableView/assets/61079370/c097ba50-b0c0-4764-abca-6935f9784dfd">

