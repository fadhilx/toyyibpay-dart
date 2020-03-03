import 'package:toyyibpay_sdk/models/index.dart';
import 'package:toyyibpay_sdk/src/extensions.dart';
import 'package:toyyibpay_sdk/toyyibpay_dart.dart';
import 'package:test/test.dart';

void main() async {
  var toyyibpay = ToyyibPay('secreteKey', sandbox: true);
  print((await BanksExt.fromFuture(toyyibpay.getBank())).toJson());
//   group('A group of tests', () {
//     Awesome awesome;

//     setUp(() {
//       awesome = Awesome();
//     });

//     test('First Test', () {
//       expect(awesome.isAwesome, isTrue);
//     });
//   });
}
