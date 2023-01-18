import Foundation

protocol ModeState: DomainObject {
    var device: Device { get set }
    func setModeToPowerUp()
    func setModeToIdle()
    func setModeToBusy()
    func setModeToPowerDown()
}
