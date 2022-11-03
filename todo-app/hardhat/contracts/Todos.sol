// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Todos {
    // Declare array of strings
    string[] public todos;
    
    // Take _todo as an input and push it to todos array
    function setTodo(string memory _todo) public {
        todos.push(_todo);
    }

    // Return todos array
    function getTodo() public view returns (string[] memory) {
        return todos;
    }
    
    // Return lenght of todos array
    function getTodosLength() public view returns (uint) {
        uint todosLength = todos.length;
        return todosLength;
    }
    
    // Remove todo from todos array with pop method
    function deleteToDo(uint _index) public {
        require(_index < todos.length, "This todo index does not exist.");
        todos[_index] = todos[getTodosLength() - 1];
        todos.pop();
    }
}