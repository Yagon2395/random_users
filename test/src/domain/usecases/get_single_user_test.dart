import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:random_users/src/domain/domain.dart';

class MockRandomUserRepository extends Mock implements RandomUserRepository {}

void main() {
  late RandomUserRepository randomUserRepository;
  late GetSingleUserUsecase getSingleUserUsecase;
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
    getSingleUserUsecase = GetSingleUserUsecase(randomUserRepository);
  });

  setUpAll(() {
    registerFallbackValue(resultUser);
  });

  test('should return a random user result when passing no params to usecase', () async {
    when(() => randomUserRepository.getRandomUsers(1))
        .thenAnswer((_) => Future.value(Right(List<Result>.filled(1, resultUser))));

    var result = await getSingleUserUsecase(NoParams());

    expect(result, Right(resultUser));
  });
}
