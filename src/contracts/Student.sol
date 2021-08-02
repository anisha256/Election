pragma solidity >=0.5.16 <0.6.0;

contract StudentInfo{

    struct Student{
        string name;
        uint rollno;
        uint percentage;
    }
    // Student[] public students;

    mapping(address => Student)public students;

    function registerStudent(string memory _name, uint _rollno, uint _percentage)public{
        students[msg.sender]=Student(_name,_rollno,_percentage);
    }

    function getRecord() public view returns(string memory , uint, uint ){
        return(students[msg.sender].name,students[msg.sender].rollno,students[msg.sender].percentage);
    }
    
    function updateRecord(string memory _newname,uint _newrollno, uint _newpercentage)public{

            students[msg.sender].name=_newname;
            students[msg.sender].rollno=_newrollno;
            students[msg.sender].percentage=_newpercentage;
    }
  
    function deleteRecord()public{
         delete students[msg.sender];
        

    }
   

}