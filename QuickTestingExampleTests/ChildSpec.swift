import Quick
import Nimble
import QuickTestingExample

class ChildSpec: QuickSpec {
    override func spec() {
        describe("child") {
            
            var parent: Parent?
            var sut: Child?
            
            beforeEach {
                parent = Parent()
                sut = Child(parent: parent!)
            }
            
            describe("diet") {
                it("can eat chocolate") {
                    expect(sut!.can(ChildAbility.Eat, perform: "chocolate")).to(beTrue())
                }
            }
        }
    }
}
