/*
 * Copyright 2023 The TensorFlow Authors. All Rights Reserved.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *             http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
 
import 'dart:ffi';

import '../dlib.dart';

import '../types.dart';

// XNNPack Delegate bindings

// Creates a new delegate instance that need to be destroyed with
// `TfLiteXNNPackDelegateDelete` when delegate is no longer used by TFLite.
// When `options` is set to `nullptr`, the following default values are used:
Pointer<TfLiteDelegate> Function(Pointer<TfLiteXNNPackDelegateOptions> options)
    tfliteXNNPackDelegateCreate = tflitelib
        .lookup<NativeFunction<_TfLiteXNNPackDelegateCreate_native_t>>(
            'TfLiteXNNPackDelegateCreate')
        .asFunction();

typedef _TfLiteXNNPackDelegateCreate_native_t = Pointer<TfLiteDelegate> Function(
    Pointer<TfLiteXNNPackDelegateOptions> options);

// Destroys a delegate created with `TfLiteXNNPackDelegateCreate` call.
void Function(Pointer<TfLiteDelegate>) tfliteXNNPackDelegateDelete = tflitelib
    .lookup<NativeFunction<_TfLiteXNNPackDelegateDelete_native_t>>(
        'TfLiteXNNPackDelegateDelete')
    .asFunction();

typedef _TfLiteXNNPackDelegateDelete_native_t = Void Function(
    Pointer<TfLiteDelegate> delegate);

/// Default Options
TfLiteXNNPackDelegateOptions Function() tfLiteXNNPackDelegateOptionsDefault = tflitelib
    .lookup<NativeFunction<_TfLiteXNNPackDelegateOptions_native_t>>(
        'TfLiteXNNPackDelegateOptionsDefault')
    .asFunction();

typedef _TfLiteXNNPackDelegateOptions_native_t = TfLiteXNNPackDelegateOptions Function();
