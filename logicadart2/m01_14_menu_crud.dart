void main() {
  
  final operator = 'c'.toLowerCase();
  // final c = 'Create';
  // final r = 'Read';
  // final u = 'Update';
  // final d = 'Delete';

  switch (operator) {
    case 'c':
      {
        print('Cadastrar/Inserir');
      }
      break;
    case 'r':
      {
        print('Buscar/Ler');
      }
      break;
    case 'u':
      {
        print('Editar/Atualizar');
      }
      break;

    case 'd':
      {
        print('Excluir/Apagar');
      }
      break;
  }
}
