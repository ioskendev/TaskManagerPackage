import XCTest
@testable import TaskManagerPackage

var sut = Task(title: "Test")
var sutManager = TaskManager()

/// Task Manager Package Tests
final class TaskManagerPackageTests: XCTestCase {
	func testExample() throws {
		sut.title = "Test2"
		XCTAssertEqual(sut.title, "Test2")
	}
	func test_checkTaskCompletedProperty_shouldBeFalse() throws {
		XCTAssertEqual(sut.completed, false)
	}
	
	func test_addTasksInTaskManager_shouldBeTree() throws {
		var newTasks = [Task(title: "Test4", completed: true), Task(title: "Test5", completed: false)]
		sutManager.addTasks(tasks: newTasks)
		XCTAssertEqual(sutManager.uncompletedTasks().count, 1)
	}
	
	func test_checkAddingTaskToTaskList_shouldBeDone() throws {
		sutManager.addTask(task: sut)
		
		XCTAssertEqual(sutManager.allTasks().count, 3)
	}
	
	func test_checkCompletedTaskInTaskManager_shouldBeNill() throws {
		XCTAssertEqual(sutManager.completedTasks().count, 1)
	}
	func test_checkUnCompletedTaskInTaskManager_shouldBeOne() throws {
		XCTAssertEqual(sutManager.uncompletedTasks().count, 2)
	}
	
}
