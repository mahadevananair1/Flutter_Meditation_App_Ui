class ScrollList {
  final int position;
  final String name;

  final String image;

  ScrollList(
    this.position, {
    required this.name,
    required this.image,
  });
}

List<ScrollList> scrollItems = [
  ScrollList(1,
      name: 'Mindfulness',
      image:
          'https://images.unsplash.com/photo-1483884105135-c06ea81a7a80?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=750&q=80'),
  ScrollList(2,
      name: 'Yoga',
      image:
          'https://images.unsplash.com/photo-1544592218-b546f7b9ddb4?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1950&q=80'),
  ScrollList(3,
      name: 'Vipassana',
      image:
          'https://images.unsplash.com/photo-1489908990827-08a75c580832?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=750&q=80'),
];
