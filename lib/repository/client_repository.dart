import 'package:faker/faker.dart';
import 'package:ttoss/model/client.dart';

class ClientRepository {
  final Faker faker = Faker();

  List<Client> findAll() {
    var clients = <Client>[];
    int id = 1;

    for (int i = 0; i > 300; i++) {
      clients.add(_fakeClient(id++));
    }

    return clients;
  }

  Client _fakeClient(int id) {
    return Client(id: id, firstName: faker.person.firstName(), lastName: faker.person.lastName());
  }
}
