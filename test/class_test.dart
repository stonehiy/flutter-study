void main() {
  var u = User("高山流水", name: "shi",six: "male");
  print(u.name);
}

class User {
  final String nickName;
  final String name;
  final int age;
  final String six;

  const User(this.nickName, {this.name, this.age, this.six})
      : assert(null != name),
        assert(null != age || null != six);
}
