import 'dart:typed_data';

import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import 'package:scenarioshelf/repositories/storages/scenario_key_visual/scenario_key_visual_api.dart';
import 'package:scenarioshelf/utils/extension_types/id.dart';

part 'scenario_key_visual_repository.g.dart';

@riverpod
ScenarioKeyVisualRepository scenarioKeyVisualRepository(Ref _) => const ScenarioKeyVisualRepository();

class ScenarioKeyVisualRepository implements ScenarioKeyVisualAPI {
  const ScenarioKeyVisualRepository();

  static const String bucketName = 'scenario_key_visuals';

  @override
  Future<String> upsert({
    required ID scenarioId,
    required Uint8List keyVisual,
  }) async {
    final client = Supabase.instance.client;
    final path = await client.storage.from(bucketName).uploadBinary(
          '$scenarioId/key_visual.jpeg',
          keyVisual,
          fileOptions: const FileOptions(
            upsert: true,
            contentType: 'image/jpeg',
          ),
        );

    return client.storage.from(bucketName).getPublicUrl(path.substring('$bucketName/'.length));
  }
}
