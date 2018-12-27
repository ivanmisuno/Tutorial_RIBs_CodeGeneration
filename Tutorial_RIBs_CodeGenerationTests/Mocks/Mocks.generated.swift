// Generated using Sourcery 0.15.0 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT

//swiftlint:disable force_cast
//swiftlint:disable function_body_length
//swiftlint:disable line_length
//swiftlint:disable vertical_whitespace

import RIBs
import RxSwift
import RxTest
@testable import Tutorial_RIBs_CodeGeneration

// MARK: - Buildable
class BuildableMock: Buildable {
}

// MARK: - Interactable
class InteractableMock: Interactable {

    // MARK: - Variables
    var isActive: Bool = false
    var isActiveStream: Observable<Bool> {
        isActiveStreamGetCount += 1
        if let handler = isActiveStreamGetHandler {
            return handler()
        }
        return isActiveStreamSubject.asObservable()
    }
    var isActiveStreamGetCount: Int = 0
    var isActiveStreamGetHandler: (() -> Observable<Bool>)? = nil
    lazy var isActiveStreamSubject = PublishSubject<Bool>()

    // MARK: - Methods
    func activate() {
        activateCallCount += 1
        if let __activateHandler = self.activateHandler {
            __activateHandler()
        }
    }
    var activateCallCount: Int = 0
    var activateHandler: (() -> ())? = nil
    func deactivate() {
        deactivateCallCount += 1
        if let __deactivateHandler = self.deactivateHandler {
            __deactivateHandler()
        }
    }
    var deactivateCallCount: Int = 0
    var deactivateHandler: (() -> ())? = nil
}

// MARK: - LaunchRouting
class LaunchRoutingMock: LaunchRouting {

    // MARK: - Variables
    var children: [Routing] = []
    var interactable: Interactable
    var lifecycle: Observable<RouterLifecycle> {
        lifecycleGetCount += 1
        if let handler = lifecycleGetHandler {
            return handler()
        }
        return lifecycleSubject.asObservable()
    }
    var lifecycleGetCount: Int = 0
    var lifecycleGetHandler: (() -> Observable<RouterLifecycle>)? = nil
    lazy var lifecycleSubject = PublishSubject<RouterLifecycle>()
    var viewControllable: ViewControllable

    // MARK: - Initializer
    init(interactable: Interactable, viewControllable: ViewControllable) {
        self.interactable = interactable
        self.viewControllable = viewControllable
    }

    // MARK: - Methods
    func attachChild(_ child: Routing) {
        attachChildCallCount += 1
        if let __attachChildHandler = self.attachChildHandler {
            __attachChildHandler(child)
        }
    }
    var attachChildCallCount: Int = 0
    var attachChildHandler: ((_ child: Routing) -> ())? = nil
    func detachChild(_ child: Routing) {
        detachChildCallCount += 1
        if let __detachChildHandler = self.detachChildHandler {
            __detachChildHandler(child)
        }
    }
    var detachChildCallCount: Int = 0
    var detachChildHandler: ((_ child: Routing) -> ())? = nil
    func launchFromWindow(_ window: UIWindow) {
        launchFromWindowCallCount += 1
        if let __launchFromWindowHandler = self.launchFromWindowHandler {
            __launchFromWindowHandler(window)
        }
    }
    var launchFromWindowCallCount: Int = 0
    var launchFromWindowHandler: ((_ window: UIWindow) -> ())? = nil
    func load() {
        loadCallCount += 1
        if let __loadHandler = self.loadHandler {
            __loadHandler()
        }
    }
    var loadCallCount: Int = 0
    var loadHandler: (() -> ())? = nil
}

// MARK: - Presentable
class PresentableMock: Presentable {
}

// MARK: - RootBuildable
class RootBuildableMock: RootBuildable {

    // MARK: - Methods
    func build(withListener listener: RootListener) -> RootRouting {
        buildCallCount += 1
        if let __buildHandler = self.buildHandler {
            return __buildHandler(listener)
        }
        fatalError("buildHandler expected to be set.")
    }
    var buildCallCount: Int = 0
    var buildHandler: ((_ listener: RootListener) -> (RootRouting))? = nil
}

// MARK: - RootDependency
class RootDependencyMock: RootDependency {
}

// MARK: - RootInteractable
class RootInteractableMock: RootInteractable {

    // MARK: - Variables
    var isActive: Bool = false
    var isActiveStream: Observable<Bool> {
        isActiveStreamGetCount += 1
        if let handler = isActiveStreamGetHandler {
            return handler()
        }
        return isActiveStreamSubject.asObservable()
    }
    var isActiveStreamGetCount: Int = 0
    var isActiveStreamGetHandler: (() -> Observable<Bool>)? = nil
    lazy var isActiveStreamSubject = PublishSubject<Bool>()
    var listener: RootListener? = nil {
        didSet {
            listenerSetCount += 1
        }
    }
    var listenerSetCount: Int = 0
    var router: RootRouting? = nil {
        didSet {
            routerSetCount += 1
        }
    }
    var routerSetCount: Int = 0

    // MARK: - Methods
    func activate() {
        activateCallCount += 1
        if let __activateHandler = self.activateHandler {
            __activateHandler()
        }
    }
    var activateCallCount: Int = 0
    var activateHandler: (() -> ())? = nil
    func deactivate() {
        deactivateCallCount += 1
        if let __deactivateHandler = self.deactivateHandler {
            __deactivateHandler()
        }
    }
    var deactivateCallCount: Int = 0
    var deactivateHandler: (() -> ())? = nil
    func splashDidComplete() {
        splashDidCompleteCallCount += 1
        if let __splashDidCompleteHandler = self.splashDidCompleteHandler {
            __splashDidCompleteHandler()
        }
    }
    var splashDidCompleteCallCount: Int = 0
    var splashDidCompleteHandler: (() -> ())? = nil
}

// MARK: - RootListener
class RootListenerMock: RootListener {
}

// MARK: - RootPresentable
class RootPresentableMock: RootPresentable {

    // MARK: - Variables
    var listener: RootPresentableListener? = nil {
        didSet {
            listenerSetCount += 1
        }
    }
    var listenerSetCount: Int = 0
}

// MARK: - RootPresentableListener
class RootPresentableListenerMock: RootPresentableListener {
}

// MARK: - RootRouting
class RootRoutingMock: RootRouting {

    // MARK: - Variables
    var children: [Routing] = []
    var interactable: Interactable
    var lifecycle: Observable<RouterLifecycle> {
        lifecycleGetCount += 1
        if let handler = lifecycleGetHandler {
            return handler()
        }
        return lifecycleSubject.asObservable()
    }
    var lifecycleGetCount: Int = 0
    var lifecycleGetHandler: (() -> Observable<RouterLifecycle>)? = nil
    lazy var lifecycleSubject = PublishSubject<RouterLifecycle>()
    var viewControllable: ViewControllable

    // MARK: - Initializer
    init(interactable: Interactable, viewControllable: ViewControllable) {
        self.interactable = interactable
        self.viewControllable = viewControllable
    }

    // MARK: - Methods
    func attachChild(_ child: Routing) {
        attachChildCallCount += 1
        if let __attachChildHandler = self.attachChildHandler {
            __attachChildHandler(child)
        }
    }
    var attachChildCallCount: Int = 0
    var attachChildHandler: ((_ child: Routing) -> ())? = nil
    func detachChild(_ child: Routing) {
        detachChildCallCount += 1
        if let __detachChildHandler = self.detachChildHandler {
            __detachChildHandler(child)
        }
    }
    var detachChildCallCount: Int = 0
    var detachChildHandler: ((_ child: Routing) -> ())? = nil
    func detachSplash() {
        detachSplashCallCount += 1
        if let __detachSplashHandler = self.detachSplashHandler {
            __detachSplashHandler()
        }
    }
    var detachSplashCallCount: Int = 0
    var detachSplashHandler: (() -> ())? = nil
    func launchFromWindow(_ window: UIWindow) {
        launchFromWindowCallCount += 1
        if let __launchFromWindowHandler = self.launchFromWindowHandler {
            __launchFromWindowHandler(window)
        }
    }
    var launchFromWindowCallCount: Int = 0
    var launchFromWindowHandler: ((_ window: UIWindow) -> ())? = nil
    func load() {
        loadCallCount += 1
        if let __loadHandler = self.loadHandler {
            __loadHandler()
        }
    }
    var loadCallCount: Int = 0
    var loadHandler: (() -> ())? = nil
    func routeToSplash() {
        routeToSplashCallCount += 1
        if let __routeToSplashHandler = self.routeToSplashHandler {
            __routeToSplashHandler()
        }
    }
    var routeToSplashCallCount: Int = 0
    var routeToSplashHandler: (() -> ())? = nil
}

// MARK: - RootViewControllable
class RootViewControllableMock: RootViewControllable {

    // MARK: - Variables
    var uiviewController: UIViewController

    // MARK: - Initializer
    init(uiviewController: UIViewController) {
        self.uiviewController = uiviewController
    }
}

// MARK: - Routing
class RoutingMock: Routing {

    // MARK: - Variables
    var children: [Routing] = []
    var interactable: Interactable
    var lifecycle: Observable<RouterLifecycle> {
        lifecycleGetCount += 1
        if let handler = lifecycleGetHandler {
            return handler()
        }
        return lifecycleSubject.asObservable()
    }
    var lifecycleGetCount: Int = 0
    var lifecycleGetHandler: (() -> Observable<RouterLifecycle>)? = nil
    lazy var lifecycleSubject = PublishSubject<RouterLifecycle>()

    // MARK: - Initializer
    init(interactable: Interactable) {
        self.interactable = interactable
    }

    // MARK: - Methods
    func attachChild(_ child: Routing) {
        attachChildCallCount += 1
        if let __attachChildHandler = self.attachChildHandler {
            __attachChildHandler(child)
        }
    }
    var attachChildCallCount: Int = 0
    var attachChildHandler: ((_ child: Routing) -> ())? = nil
    func detachChild(_ child: Routing) {
        detachChildCallCount += 1
        if let __detachChildHandler = self.detachChildHandler {
            __detachChildHandler(child)
        }
    }
    var detachChildCallCount: Int = 0
    var detachChildHandler: ((_ child: Routing) -> ())? = nil
    func load() {
        loadCallCount += 1
        if let __loadHandler = self.loadHandler {
            __loadHandler()
        }
    }
    var loadCallCount: Int = 0
    var loadHandler: (() -> ())? = nil
}

// MARK: - SplashBuildable
class SplashBuildableMock: SplashBuildable {

    // MARK: - Methods
    func build(withListener listener: SplashListener) -> SplashRouting {
        buildCallCount += 1
        if let __buildHandler = self.buildHandler {
            return __buildHandler(listener)
        }
        fatalError("buildHandler expected to be set.")
    }
    var buildCallCount: Int = 0
    var buildHandler: ((_ listener: SplashListener) -> (SplashRouting))? = nil
}

// MARK: - SplashDependency
class SplashDependencyMock: SplashDependency {
}

// MARK: - SplashInteractable
class SplashInteractableMock: SplashInteractable {

    // MARK: - Variables
    var isActive: Bool = false
    var isActiveStream: Observable<Bool> {
        isActiveStreamGetCount += 1
        if let handler = isActiveStreamGetHandler {
            return handler()
        }
        return isActiveStreamSubject.asObservable()
    }
    var isActiveStreamGetCount: Int = 0
    var isActiveStreamGetHandler: (() -> Observable<Bool>)? = nil
    lazy var isActiveStreamSubject = PublishSubject<Bool>()
    var listener: SplashListener? = nil {
        didSet {
            listenerSetCount += 1
        }
    }
    var listenerSetCount: Int = 0
    var router: SplashRouting? = nil {
        didSet {
            routerSetCount += 1
        }
    }
    var routerSetCount: Int = 0

    // MARK: - Methods
    func activate() {
        activateCallCount += 1
        if let __activateHandler = self.activateHandler {
            __activateHandler()
        }
    }
    var activateCallCount: Int = 0
    var activateHandler: (() -> ())? = nil
    func deactivate() {
        deactivateCallCount += 1
        if let __deactivateHandler = self.deactivateHandler {
            __deactivateHandler()
        }
    }
    var deactivateCallCount: Int = 0
    var deactivateHandler: (() -> ())? = nil
}

// MARK: - SplashListener
class SplashListenerMock: SplashListener {

    // MARK: - Methods
    func splashDidComplete() {
        splashDidCompleteCallCount += 1
        if let __splashDidCompleteHandler = self.splashDidCompleteHandler {
            __splashDidCompleteHandler()
        }
    }
    var splashDidCompleteCallCount: Int = 0
    var splashDidCompleteHandler: (() -> ())? = nil
}

// MARK: - SplashPresentable
class SplashPresentableMock: SplashPresentable {

    // MARK: - Variables
    var listener: SplashPresentableListener? = nil {
        didSet {
            listenerSetCount += 1
        }
    }
    var listenerSetCount: Int = 0

    // MARK: - Methods
    func startFadeOutAnimation(completionCallback: @escaping () -> ()) {
        startFadeOutAnimationCallCount += 1
        if let __startFadeOutAnimationHandler = self.startFadeOutAnimationHandler {
            __startFadeOutAnimationHandler(completionCallback)
        }
    }
    var startFadeOutAnimationCallCount: Int = 0
    var startFadeOutAnimationHandler: ((_ completionCallback: @escaping () -> ()) -> ())? = nil
    func startLoadingAnimation() {
        startLoadingAnimationCallCount += 1
        if let __startLoadingAnimationHandler = self.startLoadingAnimationHandler {
            __startLoadingAnimationHandler()
        }
    }
    var startLoadingAnimationCallCount: Int = 0
    var startLoadingAnimationHandler: (() -> ())? = nil
}

// MARK: - SplashPresentableListener
class SplashPresentableListenerMock: SplashPresentableListener {
}

// MARK: - SplashRouting
class SplashRoutingMock: SplashRouting {

    // MARK: - Variables
    var children: [Routing] = []
    var interactable: Interactable
    var lifecycle: Observable<RouterLifecycle> {
        lifecycleGetCount += 1
        if let handler = lifecycleGetHandler {
            return handler()
        }
        return lifecycleSubject.asObservable()
    }
    var lifecycleGetCount: Int = 0
    var lifecycleGetHandler: (() -> Observable<RouterLifecycle>)? = nil
    lazy var lifecycleSubject = PublishSubject<RouterLifecycle>()
    var viewControllable: ViewControllable

    // MARK: - Initializer
    init(interactable: Interactable, viewControllable: ViewControllable) {
        self.interactable = interactable
        self.viewControllable = viewControllable
    }

    // MARK: - Methods
    func attachChild(_ child: Routing) {
        attachChildCallCount += 1
        if let __attachChildHandler = self.attachChildHandler {
            __attachChildHandler(child)
        }
    }
    var attachChildCallCount: Int = 0
    var attachChildHandler: ((_ child: Routing) -> ())? = nil
    func detachChild(_ child: Routing) {
        detachChildCallCount += 1
        if let __detachChildHandler = self.detachChildHandler {
            __detachChildHandler(child)
        }
    }
    var detachChildCallCount: Int = 0
    var detachChildHandler: ((_ child: Routing) -> ())? = nil
    func load() {
        loadCallCount += 1
        if let __loadHandler = self.loadHandler {
            __loadHandler()
        }
    }
    var loadCallCount: Int = 0
    var loadHandler: (() -> ())? = nil
}

// MARK: - SplashViewControllable
class SplashViewControllableMock: SplashViewControllable {

    // MARK: - Variables
    var uiviewController: UIViewController

    // MARK: - Initializer
    init(uiviewController: UIViewController) {
        self.uiviewController = uiviewController
    }
}

// MARK: - ViewControllable
class ViewControllableMock: ViewControllable {

    // MARK: - Variables
    var uiviewController: UIViewController

    // MARK: - Initializer
    init(uiviewController: UIViewController) {
        self.uiviewController = uiviewController
    }
}

// MARK: - ViewableRouting
class ViewableRoutingMock: ViewableRouting {

    // MARK: - Variables
    var children: [Routing] = []
    var interactable: Interactable
    var lifecycle: Observable<RouterLifecycle> {
        lifecycleGetCount += 1
        if let handler = lifecycleGetHandler {
            return handler()
        }
        return lifecycleSubject.asObservable()
    }
    var lifecycleGetCount: Int = 0
    var lifecycleGetHandler: (() -> Observable<RouterLifecycle>)? = nil
    lazy var lifecycleSubject = PublishSubject<RouterLifecycle>()
    var viewControllable: ViewControllable

    // MARK: - Initializer
    init(interactable: Interactable, viewControllable: ViewControllable) {
        self.interactable = interactable
        self.viewControllable = viewControllable
    }

    // MARK: - Methods
    func attachChild(_ child: Routing) {
        attachChildCallCount += 1
        if let __attachChildHandler = self.attachChildHandler {
            __attachChildHandler(child)
        }
    }
    var attachChildCallCount: Int = 0
    var attachChildHandler: ((_ child: Routing) -> ())? = nil
    func detachChild(_ child: Routing) {
        detachChildCallCount += 1
        if let __detachChildHandler = self.detachChildHandler {
            __detachChildHandler(child)
        }
    }
    var detachChildCallCount: Int = 0
    var detachChildHandler: ((_ child: Routing) -> ())? = nil
    func load() {
        loadCallCount += 1
        if let __loadHandler = self.loadHandler {
            __loadHandler()
        }
    }
    var loadCallCount: Int = 0
    var loadHandler: (() -> ())? = nil
}

// MARK: - Working
class WorkingMock: Working {

    // MARK: - Variables
    var isStarted: Bool = false
    var isStartedStream: Observable<Bool> {
        isStartedStreamGetCount += 1
        if let handler = isStartedStreamGetHandler {
            return handler()
        }
        return isStartedStreamSubject.asObservable()
    }
    var isStartedStreamGetCount: Int = 0
    var isStartedStreamGetHandler: (() -> Observable<Bool>)? = nil
    lazy var isStartedStreamSubject = PublishSubject<Bool>()

    // MARK: - Methods
    func start(_ interactorScope: InteractorScope) {
        startCallCount += 1
        if let __startHandler = self.startHandler {
            __startHandler(interactorScope)
        }
    }
    var startCallCount: Int = 0
    var startHandler: ((_ interactorScope: InteractorScope) -> ())? = nil
    func stop() {
        stopCallCount += 1
        if let __stopHandler = self.stopHandler {
            __stopHandler()
        }
    }
    var stopCallCount: Int = 0
    var stopHandler: (() -> ())? = nil
}
