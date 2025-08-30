/*
	Author: StDIABLO

	Description:

	Parameter(s):
	arrayOfPreparedSObjects,
  restoreArray

	Returns:
	textSQF
*/
KK_fnc_positionToString = {
    private "_fnc";
    _fnc = {
        if (_this < 0) then {
            str ceil _this + (str (_this - ceil _this) select [2])
        } else {
            str floor _this + (str (_this - floor _this) select [1])
        };
    };
    format [
        "[%1,%2,%3]",
        _this select 0 call _fnc,
        _this select 1 call _fnc,
        _this select 2 call _fnc
    ]
};

params ["_arrayOfCSObjects","_restoreArray"];
private _textSQF='';
private _br = toString [13, 10];
private _tab = toString [9];

_textSQF = "if (isServer) then {" + _br;
{
  _newitemModel = (getModelInfo _x select 1);
  _newitemPos = (getPosWorld _x) call KK_fnc_positionToString; //([str _arrayOfPatchesForLostClasses, 1, -1] call BIS_fnc_trimString);
  _newitemVector = ([vectorDir _x, vectorUp _x]);
  _textSQF = _textSQF + _tab + str formatText ["_simpleObject_%1 = createSimpleObject ['%2', %3];",_forEachIndex,_newitemModel,_newitemPos] + _br;
  _textSQF = _textSQF + _tab + str formatText ["_simpleObject_%1 setVectorDirAndUp %2;",_forEachIndex,_newitemVector] + _br;
  //_textSQF = _textSQF + _tab + str formatText ["[_simpleObject_%1] call BIS_fnc_boundingBoxMarker;",_forEachIndex] + _br;
} foreach _arrayOfCSObjects;
_textSQF = _textSQF + "};"+ _br;
_textSQF = _textSQF + str formatText ["comment '%1';",_restoreArray];
_textSQF;
