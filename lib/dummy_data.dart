import 'package:gsgflutterfirst/postResponse.dart';

List<Map<String, dynamic>> postsResponse = [
  {
    'user': {
      'name': 'hussam',
      'image':
      'https://images.unsplash.com/photo-1535713875002-d1d0cf377fde?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=580&q=80'
    },
    'post': {
      'time':'30 minutes ago',
      'content': "this is my first post, i really love flutter and i want to be senior developer",
      'image':
      'https://images.unsplash.com/photo-1469474968028-56623f02e42e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=874&q=80',
      'noLikes': "20",
      'noComments': "20",


}
  },
  {
    'user': {
      'name': 'momen',
      'image':
      'https://images.unsplash.com/photo-1570295999919-56ceb5ecca61?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=580&q=80'
    },
    'post': {
  'time':'3 minutes ago',

  'content': "hello world",
      'image':
      'https://images.unsplash.com/photo-1510784722466-f2aa9c52fff6?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80',
      'noLikes': "30",
      'noComments': "30",
    }
  },
  {
    'user': {
      'name': 'hashem',
      'image':
      'https://images.unsplash.com/photo-1531427186611-ecfd6d936c79?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80'
    },
    'post': {
      'time':'15 minutes ago',

      'content': "i love programming",
      'image':
      'https://images.unsplash.com/photo-1505144808419-1957a94ca61e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=326&q=80',
      'noLikes': "40",
      'noComments': "40",
    }
  },
  {
    'user': {
      'name': 'farah',
      'image':
      'https://images.unsplash.com/photo-1580489944761-15a19d654956?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=461&q=80'
    },
    'post': {
      'time':'22 minutes ago',

      'content': "welcome to gsk",
      'image':
      'https://images.unsplash.com/photo-1447752875215-b2761acb3c5d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80',
      'noLikes': "20",
      'noComments': "20",
    }
  },
  {
    'user': {
      'name': 'rashed',
      'image':
      'https://images.unsplash.com/photo-1527980965255-d3b416303d12?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=580&q=80'
    },
    'post': {
      'time':'25 minutes ago',

      'content': "hello everyone",
      'image':
      'https://images.unsplash.com/photo-1501854140801-50d01698950b?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=975&q=80',
      'noLikes': "70",
      'noComments': "70",
    }
  }
];

List<PostResponse> posts =postsResponse.map((e) => PostResponse.fromJson(e)).toList();
