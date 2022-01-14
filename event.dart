class Event{
  String itemname;
  int itemprice;
  Event({required this.itemname, required this.itemprice});

  String getItemname() => itemname;
  int getItemprice() => itemprice;

  factory Event.fromJson(Map<String,dynamic> data) => Event(itemname: data["itemname"],
      itemprice: data["itemprice"]);

  Map<String,dynamic> toJson() => {
    'itemname' : itemname,
    'itemprice' : itemprice,
  };
}
