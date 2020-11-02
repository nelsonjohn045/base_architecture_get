final RegExp phoneRegExp = RegExp(
    r"^(?=.*[0-9])(?=.*[a-z])(?=.*[A-Z])(?=.*[@$!%*?&])([a-zA-Z0-9@$!%*?&]{8,})$");
final RegExp capitalAlphabetRegExp = RegExp('(?=.*?[A-Z])');
final RegExp lowerAlphabetRegExp = RegExp('(?=.*?[a-z])');
final RegExp numericRegExp = RegExp('(?=.*?[0-9])');
final RegExp specialCharRegExp = RegExp(r'(?=.*[!@#$%^&*(),.?":{}|<>;])');
final RegExp emiratesIDRegExp =
    RegExp(r'^[0-9]{3}-[0-9]{4}-[0-9]{7}-[0-9]{1}$');
