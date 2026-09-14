String cpfToEmail(String cpf) {
  final cleanCpf = cpf.replaceAll(RegExp(r'[^0-9]'), '');
  return '$cleanCpf@example.com';
}