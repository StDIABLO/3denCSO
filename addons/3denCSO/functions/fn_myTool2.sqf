/*
  CSO_fnc_myTool2

	Author: StDIABLO

	Description:
  Create trigger with CSO objects

	Parameter(s):

	Returns:

*/
private ["_array", "_restoreArray","_prCSO", "_txt"];
_array=[];
_restoreArray=[];
_txt='';
_array = call CSO_fnc_findAllCSObjects;
_restoreArray = [_array] call CSO_fnc_saveClassAndPositionCSO;
_txt = [_array,_restoreArray] call CSO_fnc_createTextSQF;
[_txt] call CSO_fnc_createTrigger;
systemChat "Trigger with simple objects are created";
true;
