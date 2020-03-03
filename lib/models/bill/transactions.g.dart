// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transactions.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Transactions _$TransactionsFromJson(Map<String, dynamic> json) {
  return Transactions()
    ..transactions = json['transactions'] == null
        ? null
        : Transaction.fromJson(json['transactions'] as Map<String, dynamic>);
}

Map<String, dynamic> _$TransactionsToJson(Transactions instance) =>
    <String, dynamic>{
      'transactions': instance.transactions,
    };
