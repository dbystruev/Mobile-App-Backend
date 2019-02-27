import Vapor

/// Register your application's routes here.
public func routes(_ router: Router) throws {
    let acronymsController = AcronymsController()
    try router.register(collection: acronymsController)
}
