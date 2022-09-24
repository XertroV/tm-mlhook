MwFastBuffer<wstring> ArrStringToFastBufferWString(const string[] &in ss) {
    MwFastBuffer<wstring> ret;
    for (uint i = 0; i < ss.Length; i++) {
        ret.Add(wstring(ss[i]));
    }
    return ret;
}

const string FastBufferWStringToString(MwFastBuffer<wstring> &in fbws) {
    string[] items = array<string>(fbws.Length);
    for (uint i = 0; i < fbws.Length; i++) {
        auto item = fbws[i];
        items[i] = '"' + string(item).Replace('"', '\\"') + '"';
    }
    return "{" + string::Join(items, ', ') + "}";
}

const string ArrStringToString(const string[] &in ss) {
    string[] items = array<string>(ss.Length);
    for (uint i = 0; i < ss.Length; i++) {
        auto item = ss[i];
        items[i] = '"' + string(item).Replace('"', '\\"') + '"';
    }
    return "{" + string::Join(items, ', ') + "}";
}
