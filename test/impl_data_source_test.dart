import 'package:coding_exercise/data/impl_data_source.dart';
import 'package:coding_exercise/data/models/model_friends_list.dart';
import 'package:coding_exercise/data/models/model_user.dart';
import 'package:flutter_test/flutter_test.dart';

//It should have more unitTest similar but to make it short I just did this ones.

//Because all the information was mocked, there is no need of implementing
//a third party libraryto do it.

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();
  late ImplDataSource dataSource;

  setUp(() {
    dataSource = ImplDataSource();
  });

  group('fetchUserProfile', () {
    test('fetchUserProfile - check if returned model is correct.', () async {
      var response = await dataSource.getUserProfile();
      expect(response, isA<ModelUser>());
    });

    test('fetchUserProfile - check if model information is correct.', () async {
      var mockModel = const ModelUser(
          id: 1,
          name: 'John Doe',
          age: 30,
          imageProfile: 'assets/img/p1.jpg',
          gender: 'Male',
          status: 'Single',
          occupation: 'Lorem ipsum dolor',
          company: 'Consectetur adipiscing elit',
          education: 'Mauris augue massa',
          location: 'San Francisco, CA',
          bio:
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris augue massa, tincidunt in tristique et, lacinia quis nisi. Suspendisse at elementum turpis.');
      var response = await dataSource.getUserProfile();

      expect(response, equals(mockModel));
    });
  });

  group('fetchFriendsList', () {
    test('fetchFriendsList - check if returned model is correct', () async {
      var response = await dataSource.getFriendsList();

      expect(response, isA<ModelFriendsList>());
    });

    test('fetchFriendsList - check if model information is correct', () async {
      var response = await dataSource.getFriendsList();
      var listData = response.data.toList();

      listData.sort(
        (a, b) => a.id.compareTo(b.id),
      );

      //listData length should be 1 and listData[1].name should be "Jane James"

      expect(listData.length, equals(3));
      expect(listData[1].name, equals("Jane James"));
    });
  });
}
