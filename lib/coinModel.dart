import 'package:flutter/material.dart';

class Coin {
  Coin({
    required this.name,
    required this.symbol,
    required this.imageUrl,
    required this.price,
    required this.change,
    required this.changePercentage,
    required this.marketCap,
    required this.volume24h,
    required this.circulatingSupply,
    required this.totalSupply,
    required this.rank,
  });

  String name;
  String symbol;
  String imageUrl;
  num price;
  num change;
  num changePercentage;
  double marketCap;
  double volume24h;
  double circulatingSupply;
  double totalSupply;
  int rank;


  factory Coin.fromJson(Map<String, dynamic> json) {
    return Coin(
      name: json['name'],
      symbol: json['symbol'],
      imageUrl: json['image'],
      price: json['current_price'],
      change: json['price_change_24h'],
      changePercentage: json['price_change_percentage_24h'],
      marketCap: json['market_cap'],
      volume24h: json['total_volume'],
      circulatingSupply: json['circulating_supply'],
      totalSupply: json['total_supply'],
      rank: json['market_cap_rank']
    );
  }
}

List<Coin> coinList = [];
