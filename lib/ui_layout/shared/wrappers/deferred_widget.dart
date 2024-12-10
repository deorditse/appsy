// Copyright 2019 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'dart:async';
import 'package:appsy/ui_layout/shared/ui/my_circular_progress_indicator.dart';
import 'package:flutter/material.dart';

typedef LibraryLoader = Future<void> Function();
typedef DeferredWidgetBuilder = Widget Function();

class DeferredWidget extends StatefulWidget {
  const DeferredWidget(
    this.libraryLoader,
    this.createWidget, {
    super.key,
    this.placeholder,
  });

  final LibraryLoader libraryLoader;
  final DeferredWidgetBuilder createWidget;
  final Widget? placeholder;
  static final Map<LibraryLoader, Future<void>> _moduleLoaders = {};
  static final Set<LibraryLoader> _loadedModules = {};

  static Future<void> preload(LibraryLoader loader) {
    if (!_moduleLoaders.containsKey(loader)) {
      _moduleLoaders[loader] = loader().then((dynamic _) {
        _loadedModules.add(loader);
      });
    }
    return _moduleLoaders[loader]!;
  }

  @override
  State<DeferredWidget> createState() => _DeferredWidgetState();
}

class _DeferredWidgetState extends State<DeferredWidget> {
  _DeferredWidgetState();

  Widget? _loadedChild;
  DeferredWidgetBuilder? _loadedCreator;

  @override
  void initState() {
    if (DeferredWidget._loadedModules.contains(widget.libraryLoader)) {
      _onLibraryLoaded();
    } else {
      DeferredWidget.preload(widget.libraryLoader).then(
        (dynamic _) => _onLibraryLoaded(),
      );
    }
    super.initState();
  }

  void _onLibraryLoaded() {
    setState(() {
      _loadedCreator = widget.createWidget;
      _loadedChild = _loadedCreator!();
    });
  }

  @override
  Widget build(BuildContext context) {
    if (_loadedCreator != widget.createWidget && _loadedCreator != null) {
      _loadedCreator = widget.createWidget;
      _loadedChild = _loadedCreator!();
    }
    return _loadedChild ??
        (widget.placeholder ??
            Center(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: const MyCircularProgressIndicator(),
              ),
            ));
  }
}
