/*
	Author: StDIABLO

	Description:

	Parameter(s):
	arrayOfCSObjects

	Returns:
	arrayOfCSObjectsClassAndPos
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

params ["_arrayOfCSObjects"];
private _arrayOfCSObjectsClassAndPos=[];
{
  _newitem= [];
  _newitem pushBack (_x get3DENAttribute "ItemClass"select 0);
  //_newitem pushBack (_x get3DENAttribute "position" select 0);
  _npos = (_x get3DENAttribute "position" select 0) call KK_fnc_positionToString;
  _newitem pushBack (_npos);
  _newitem pushBack (_x get3DENAttribute "rotation" select 0);
  _arrayOfCSObjectsClassAndPos pushBack _newitem;
} foreach _arrayOfCSObjects;

_arrayOfCSObjectsClassAndPos;
