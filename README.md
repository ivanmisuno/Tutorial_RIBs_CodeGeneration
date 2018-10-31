# RIBs: The Missing Part. Generating Swift Protocol Mock Classes for Unit-Testing.

Tutorial project on how to set up advanced mock classes code generation in
RIBs-based iOS projects in Swift.

## Abstract

There are several modern concepts and framework that try to solve the Massive
View Controller coding anti-pattern typically found in iOS and MacOS projects,
e.g. MVVM, VIPER, Redux, etc. One the most recent and solid is Uber’s
[RIBs](https://github.com/uber/RIBs) framework. Among others, it allows
separating routing logic from the business logic and UI, by following a
Router-Interactor-Builder pattern (hence the name). The framework also enforces
hierarchical architecture of the application and extensive use of dependency
injection pattern. A class declares its dependencies via protocols that the
builder supplies at the time of instantiation. This, ideally, allows unit-tests
to provide class not with the actual implementations of its dependencies, but
with mock ones ([test doubles](https://martinfowler.com/bliki/TestDouble.html)).
In reality, however, to do this, one has to create mock classes that implement
the specified protocols. Creating such classes manually, and keeping them
up-to-date when protocol definitions change, would require a significant amount
of manual work, significantly limiting the adoption of the framework. There are
[several](https://github.com/Brightify/Cuckoo)
[tools](https://github.com/MakeAWishFoundation/SwiftyMocky)
[available](https://github.com/krzysztofzablocki/Sourcery), but they are either
cumbersome to use, or just not powerful enough, to be practically applicable out
of the box. This repository presents a sample application accompanying a
tutorial article on how to set up advanced mock classes code generation in
RIBs-based iOS projects in Swift.


## License

    Copyright 2018 Ivan Misuno.

    Licensed under the Apache License, Version 2.0 (the "License");
    you may not use this file except in compliance with the License.
    You may obtain a copy of the License at

        http://www.apache.org/licenses/LICENSE-2.0

    Unless required by applicable law or agreed to in writing, software
    distributed under the License is distributed on an "AS IS" BASIS,
    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
    See the License for the specific language governing permissions and
    limitations under the License.
