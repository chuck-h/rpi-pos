// Copyright 2024 CH. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:dart_nats/dart_nats.dart';
import 'package:intl/intl.dart';

final oCcy = NumberFormat.currency(symbol: '\$');

final natsClient = Client();

setupNats() async {
  await natsClient.connect(Uri.parse('nats://localhost:4222'));
}
  
buypub(int count, double total) async {
  await natsClient.pubString('local.buy','${count} items\n${oCcy.format(total)}');
}
