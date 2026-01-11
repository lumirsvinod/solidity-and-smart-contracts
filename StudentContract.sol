// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract StudentContract{
    struct Student{
        uint no;
        string name;
    }
    mapping(uint=>Student) public students;
    function addStudent(uint _no, string memory _name) public{
        students[_no] = Student(_no,_name);
    }
    // function getStudents(uint _no) public view returns(Student memory){ 
    //     return students[_no];
    // }
    function deleteStudent(uint _no) public{
        delete students[_no];
    }
}
