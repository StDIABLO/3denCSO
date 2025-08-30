/*
  CSO_fnc_myTool1

	Author: StDIABLO

	Description:
  "Create SQF and copy to clipboard";
	Parameter(s):

	Returns:

*/
private ["_array", "_restoreArray","_prCSO", "_txt"];
_array=[];
_restoreArray=[];
_txt='';
_array= call CSO_fnc_findAllCSObjects;
_restoreArray = [_array] call CSO_fnc_saveClassAndPositionCSO;
_txt = [_array,_restoreArray] call CSO_fnc_createTextSQF;
copyToClipboard _txt;
systemChat "SQF with simple objects are saved to your clipboard";
true;
