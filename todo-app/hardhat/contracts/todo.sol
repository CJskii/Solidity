// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Todos {
    // Array of strings called todos
    string[] public todos;
    
    // Take _todo as an input and push it inside the array
    function setTodo(string memory _todo) public {
        todos.push(_todo);
    }

    // Return todosArray
    function getTodo() public view returns (string[] memory) {
        return todos;
    }
    
    // Return length of todosArray
    function getTodosLength() public view returns (uint) {
        uint todosLength = todos.length;
        return todosLength;
    }
    
    // Remove todo from array using index
    function deleteToDo(uint _index) public {
        require(_index < todos.length, "This todo index does not exist.");
        todos[_index] = todos[getTodosLength() - 1];
        todos.pop();
    }
}
