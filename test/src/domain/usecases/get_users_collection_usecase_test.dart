import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:random_users/src/domain/domain.dart';

class MockRandomUserRepository extends Mock implements RandomUserRepository {}

void main() {
  late RandomUserRepository randomUserRepository;
  late GetUsersCollectionUsecase getUsersCollectionUsecase;
  final Result resultUser = Result(
    gender: 'male',
    name: const Name(title: 'title', first: 'first', last: 'last'),
    location: const Location(
      street: Street(number: 0, name: 'name'),
      city: 'city',
      country: 'country',
      postcode: '00000',
      coordinates: Coordinates(latitude: 'latitude', longitude: 'longitude'),
      timezone: Timezone(offset: 'offset', description: 'description'),
    ),
    email: 'email',
    login: const Login(
        uuid: 'uuid',
        username: 'username',
        password: 'password',
        salt: 'salt',
        md5: 'md5',
        sha1: 'sha1',
        sha256: 'sha256'),
    dob: Dob(date: DateTime.now(), age: 18),
    registered: Registered(date: DateTime.now(), age: 18),
    phone: 'phone',
    cell: 'cell',
    id: const Id(name: 'name', value: 'value'),
    picture: const Picture(large: 'large', medium: 'medium', thumbnail: 'thumbnail'),
    nat: 'nat',
  );

  setUp(() {
    randomUserRepository = MockRandomUserRepository();
    getUsersCollectionUsecase = GetUsersCollectionUsecase(randomUserRepository);
  });

  setUpAll(() {
    registerFallbackValue(resultUser);
  });

  test('should return a random user result when passing no params to usecase', () async {
    when(() => randomUserRepository.getRandomUsers(any()))
        .thenAnswer((_) => Future.value(Right(List<Result>.filled(5, resultUser))));

    int length = 0;
    var result = await getUsersCollectionUsecase(5);
    result.fold((l) => null, (r) => length = r?.length ?? 0);

    expect(length, 5);
  });
}
