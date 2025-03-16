
import 'package:flutter/material.dart';
import '../../../../../../core/widgets/custom_button.dart';
import 'complete_information_item.dart';

class CompleteInformationBody extends StatelessWidget {
  const CompleteInformationBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          SizedBox(height:10),
          CompleteInfoItem(
            text: 'Enter your name',
          ),
          SizedBox(height:2),
          CompleteInfoItem(
            text: 'Enter your phone number',
          ),
          SizedBox(height:2),
          CompleteInfoItem(
            maxLines: 5,
            text: 'Enter your address',
          ),
          SizedBox(height:5),
          CustomGeneralButton(
            text: 'Login',
          )
        ],
      ),
    );
  }
}
