// SPDX-License-Identifier: MIT
pragma solidity >=0.5.0;

contract TodoList {
  uint public taskCount = 0;

  struct Task {
    uint id;
    string content;
    string uniqueId;
    bool completed;
  }

  mapping(uint => Task) public tasks;

  event TaskCreated(
    uint id,
    string content,
    string uniqueId,
    bool completed
  );

  event TaskCompleted(
    uint id,
    bool completed
  );

  constructor() public {
    createTask("Archana Singh", "1234");
  }

  function createTask(string memory _content, string memory _uniqueId) public {
    taskCount ++;
    tasks[taskCount] = Task(taskCount, _content, _uniqueId, false);
    emit TaskCreated(taskCount, _content, _uniqueId, false);
  }

  function toggleCompleted(uint _id) public {
    Task memory _task = tasks[_id];
    _task.completed = !_task.completed;
    tasks[_id] = _task;
    emit TaskCompleted(_id, _task.completed);
  }

}
