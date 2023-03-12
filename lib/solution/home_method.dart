import 'package:d_method/d_method.dart';
import 'package:get/get.dart';

class HomeMethod {
  /// to set minus value\
  /// like for percentage or amount\
  /// Example: \
  /// from: [97%] .to. [-97%] \
  /// orFrom: [Rp 3.000] .to. [Rp -3.000] || [-Rp 3.000] \
  ///
  /// resolution: just *-1
  static setMinusValue() {
    // example data come from divide between income & spending(outcome)
    double income = 40000;
    double spending = 40000;

    double percent = 97;
    double amount = 3000;

    String percentString = '';
    String amountString = '';

    // get from double variable ----------------------------

    // ternary if else
    // percent = income < spending ? percent * -1 : percent;
    // amount = income < spending ? amount * -1 : amount;

    /**
   * other if else (if-else braces)
   * 
   if(income<spending){
    percent = percent *-1;
    amount = amount*-1;
   }
   *
   */

    // DMethod.printTitle(
    //   'setMinusValue',
    //   'percent: $percent \n amount: $amount',
    // );

    // get from string variable ----------------------------

    percentString = income < spending
        ? (percent * -1).toStringAsFixed(1)
        : percent.toStringAsFixed(1);
    amountString = income < spending ? 'Rp ${(amount * -1)}' : 'Rp $amount';
    //                                  ^ bisa pakai NumberFormat -> intl package

    DMethod.printTitle(
      'setMinusValue',
      'percent: $percentString \n amount: $amountString',
    );
  }

  // ================================================================================================
  // var RxList<double>
  static final _week = [0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0].obs;

  // getter var RxList<double>
  static List<double> get week => _week.value;

  /// problem on key and value list week for chart
  static listWeek() {
    Map responseBody = {
      'week': [2.0, 3.3, 0, 0, 0, 0, 0],
    };

    // List listWeek = responseBody['week'];
    // _week.value = List<double>.from(
    //   responseBody['week'].map((e) {
    //     num value = e as num;
    //     return value.toDouble();
    //   }).toList(),
    // );

    _week.value = List.castFrom(
      responseBody['week'].map((e) => (e as num).toDouble()).toList(),
    );

    try {
      print('success');
    } catch (e) {
      print(e.toString());
    }
  }
  // ================================================================================================
}
