import 'package:flutter/material.dart';

class AdaptiveTextSelectionToolbarScreen extends StatelessWidget {
  const AdaptiveTextSelectionToolbarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Adaptive Text Selection Toolbar'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(32),
        // child: TextField(
        //   maxLines: 30,
        //   controller: TextEditingController(text: text),
        // ),
        child: SelectableText(
          text,
          contextMenuBuilder: (context, selectedText) {
            return AdaptiveTextSelectionToolbar.buttonItems(
              buttonItems: [
                ContextMenuButtonItem(
                  onPressed: () {
                    ContextMenuController.removeAny();
                    selectedText.currentTextEditingValue.copyWith(
                      selection: const TextSelection.collapsed(offset: 0),
                    );
                    print('Custom Action');
                  },
                  type: ContextMenuButtonType.custom,
                  label: 'Custom Action',
                ),
              ],
              anchors: selectedText.contextMenuAnchors,
            );
            return AdaptiveTextSelectionToolbar.editableText(
              editableTextState: selectedText,
            );
          },
        ),
      ),
    );
  }
}

const text = '''
The default context menu for text selection for the current platform.
Typically, this widget would be passed to contextMenuBuilder 
in a supported parent widget, such as:
EditableText.contextMenuBuilder
TextField.contextMenuBuilder
CupertinoTextField.contextMenuBuilder
SelectionArea.contextMenuBuilder
SelectableText.contextMenuBuilder

See also:

EditableText.getEditableButtonItems, which returns the default ContextMenuButtonItems for EditableText on the platform.
AdaptiveTextSelectionToolbar.getAdaptiveButtons, which builds the button Widgets for the current platform given ContextMenuButtonItems.
CupertinoAdaptiveTextSelectionToolbar, which does the same thing as this widget but only for Cupertino context menus.
TextSelectionToolbar, the default toolbar for Android.
DesktopTextSelectionToolbar, the default toolbar for desktop platforms other than MacOS.
CupertinoTextSelectionToolbar, the default toolbar for iOS.
CupertinoDesktopTextSelectionToolbar, the default toolbar for MacOS.
''';
