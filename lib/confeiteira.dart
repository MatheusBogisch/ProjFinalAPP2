class Confeiteira {
  int id;
  String login;
  String senha;
  Confeiteira(this.id, this.login, this.senha);
  @override
  String toString() {
    // TODO: implement toString
    return "$id, $login, $senha";
  }
}