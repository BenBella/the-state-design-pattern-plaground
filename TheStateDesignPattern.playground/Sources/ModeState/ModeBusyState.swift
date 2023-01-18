import Foundation

class ModeBusyState: ModeState {
    var description: String
    unowned var device: Device
    
    init(_ device: Device) {
        self.description = "Busy"
        self.device = device
    }
    
    convenience init(_ modeState: ModeState) {
        self.init(modeState.device)
    }
    
    func setModeToPowerUp() {
        
    }
    
    func setModeToIdle() {
        
    }
    
    func setModeToBusy() {
        
    }
    
    func setModeToPowerDown() {
        
    }
}
