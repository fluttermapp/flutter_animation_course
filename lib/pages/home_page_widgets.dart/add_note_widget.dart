import 'package:flutter/material.dart';

import '../../core/constants.dart';
import '../widgets/text_field_widget.dart';

class AddNoteWidget extends StatefulWidget {
  const AddNoteWidget({
    Key? key,
    required this.controller,
    required this.onControllerChanged,
  }) : super(key: key);
  final TextEditingController controller;
  final Function(String) onControllerChanged;

  @override
  State<AddNoteWidget> createState() => _AddNoteWidgetState();
}

class _AddNoteWidgetState extends State<AddNoteWidget> {
  bool isMore = false;

  @override
  Widget build(BuildContext context) {
    return AnimatedCrossFade(
      firstChild: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(height: kPadding10),
          ElevatedButton(
            onPressed: () {
              setState(() {
                isMore = true;
              });
            },
            style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              backgroundColor: Colors.white,
            ),
            child: Text(
              'Add a note',
              style: textStyle,
            ),
          ),
          Visibility(
            visible: widget.controller.text.isNotEmpty,
            child: Padding(
              padding: const EdgeInsets.only(top: kPadding5),
              child: Text(
                'Note: ${widget.controller.text}',
                style: const TextStyle(
                  fontSize: 14,
                  color: Colors.white70,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          ),
          const SizedBox(height: kPadding10),
        ],
      ),
      secondChild: Container(
        decoration: BoxDecoration(
          color: Colors.white70,
          borderRadius: BorderRadius.circular(20),
        ),
        margin: const EdgeInsets.all(kPadding10),
        padding: const EdgeInsets.all(kPadding10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            const SizedBox(height: kPadding10),
            TextFieldWidget(
              controller: widget.controller,
              hintText: 'Write your comment',
              prefixIconData: Icons.edit,
            ),
            const SizedBox(height: kPadding10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  flex: 1,
                  child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        isMore = false;
                      });
                      widget.onControllerChanged('');
                    },
                    style: ElevatedButton.styleFrom(
                      minimumSize: const Size(double.infinity, 40),
                      backgroundColor: Colors.grey[800],
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    child: Text(
                      'Clear',
                      style: textStyle2,
                    ),
                  ),
                ),
                const SizedBox(width: kPadding10),
                Expanded(
                  flex: 2,
                  child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        isMore = false;
                      });
                    },
                    style: ElevatedButton.styleFrom(
                      minimumSize: const Size(double.infinity, 40),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    child: Text(
                      'Save',
                      style: textStyle2,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      crossFadeState:
          isMore ? CrossFadeState.showSecond : CrossFadeState.showFirst,
      duration: const Duration(
        milliseconds: 300,
      ),
    );
  }
}
