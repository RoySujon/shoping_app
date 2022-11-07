class ItemData {
  ItemData(this.price);
  int subTotal = 0;
  int count = 0;
  double? price;
  static List<ItemData> itemList() {
    return [ItemData(199.0)];
  }
}
