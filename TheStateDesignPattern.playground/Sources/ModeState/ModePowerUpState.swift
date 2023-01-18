import Foundation

class ModePowerUpState: ModeState {
    var description: String
    unowned var device: Device
    
    init(_ device: Device) {
        self.description = "Powering up"
        self.device = device
    }
    
    convenience init(_ modeState: ModeState) {
        self.init(modeState.device)
    }
    
    func setModeToPowerUp() {
        // We're in powerup state already
    }
    
    func setModeToIdle() {
    }
    
    func setModeToBusy() {
    }
    
    func setModeToPowerDown() {
    }
}
