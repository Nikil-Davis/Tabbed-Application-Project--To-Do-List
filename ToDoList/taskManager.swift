
import UIKit

var tskMgr:taskManager = taskManager()
struct task {
    var name = "un-named"
    var desc = "Un-Described"
}
class taskManager: NSObject {
    
    var tasks = [task]()
    func addTask(_ name: String,desc: String){
        tasks.append(task(name: name, desc: desc))
    }

}
