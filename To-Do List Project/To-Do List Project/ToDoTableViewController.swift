

import UIKit

class ToDoTableViewController: UITableViewController {
    var toDos : [ToDo] = []
    override func viewDidLoad() {
        super.viewDidLoad()

        
        func createToDos() -> [ToDo] {
            let swift = ToDo()
            swift.name = "Learn Swift"
            swift.important = true
            
            let dog = ToDo()
            dog.name = "Walk the Dog"
            
            let  clean = ToDo()
            clean.name = "Do the laundry, clean kitchen"
            return[swift, dog, clean]
        }
            toDos = createToDos()

    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return toDos.count
    }
    
     override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
      //Configure the cell
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)
        let toDo = toDos[indexPath.row]
        
        cell.textLabel?.text = toDo.name
        
        
        if toDo.important{
            cell.textLabel?.text =  "🔥" + toDo.name
        }
        else{
            cell.textLabel?.text = "⬇️" + toDo.name
        }
        
        return cell
     }

}
