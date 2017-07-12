///checkPierceList(id)
var ID = id;
var list = other.pierceList;
for (var i = 0 ; i < ds_list_size(list); i ++) {
    if(ds_list_find_value(list,i) == ID) {
        return true;
    }
}
return false;