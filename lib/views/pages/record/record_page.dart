import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:scenarioshelf/constants/themes/colors/app_color.dart';
import 'package:scenarioshelf/utils/app_image_picker.dart';
import 'package:scenarioshelf/views/components/app_bars/slide_transaction_page_app_bar.dart';
import 'package:scenarioshelf/views/components/dividers/labeled_divider.dart';
import 'package:scenarioshelf/views/components/forms/form_block.dart';
import 'package:scenarioshelf/views/components/forms/form_content.dart';
import 'package:scenarioshelf/views/components/forms/form_image.dart';
import 'package:scenarioshelf/views/components/forms/form_section.dart';

class RecordPage extends HookConsumerWidget {
  const RecordPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final size = MediaQuery.of(context).size;
    final formKey = useState(GlobalKey<FormState>());
    final image = useState<Uint8List?>(null);
    final scenarioTitle = useState('');
    final scenarioTitleKana = useState('');

    return Scaffold(
      backgroundColor: AppColor.of(context).ui.formBackground,
      appBar: SlideTransactionPageAppBar(
        backgroundColor: AppColor.of(context).ui.formBackground,
        title: const Text('新しいセッション'),
      ),
      body: Scrollbar(
        child: SingleChildScrollView(
          child: Form(
            key: formKey.value,
            child: Column(
              children: [
                FormSection(
                  title: const LabeledDivider(label: 'シナリオ'),
                  children: [
                    Center(
                      child: FormImage(
                        image: image.value,
                        size: Size.square(size.width * 0.3),
                        onTap: () async {
                          final selected = await AppImagePicker().pickImage(
                            cropSize: const Size.square(512),
                          );
                          if (selected != null) {
                            image.value = selected;
                          }
                        },
                      ),
                    ),
                    FormBlock(
                      children: [
                        FormContent.textFormField(
                          isRequired: true,
                          hintText: 'シナリオタイトル',
                          onChanged: (value) {
                            scenarioTitle.value = value;
                          },
                        ),
                        FormContent.textFormField(
                          hintText: 'フリガナ(カタカナ・半角英数)',
                          onChanged: (value) {
                            scenarioTitleKana.value = value;
                          },
                        ),
                      ],
                    ),
                    FormBlock(
                      children: [
                        FormContent.textFormField(
                          hintText: '作者',
                        ),
                        FormContent.textFormField(
                          hintText: 'URL',
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
