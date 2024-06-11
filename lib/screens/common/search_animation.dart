import 'package:flutter/material.dart';

import 'package:searchbar_animation/searchbar_animation.dart';

class SearchbarAnimation extends StatefulWidget {
  const SearchbarAnimation({Key? key}) : super(key: key);
  @override
  // ignore: library_private_types_in_public_api
  _SearchbarAnimationState createState() => _SearchbarAnimationState();
}

class _SearchbarAnimationState extends State<SearchbarAnimation> {
  @override
  Widget build(BuildContext context) {
    return _buildSearchbarAnimation();
  }

  Widget _buildSearchbarAnimation() {
    return SearchBarAnimation(
      durationInMilliSeconds:200,
      enableBoxBorder: true,
      isSearchBoxOnRightSide: true,
      searchBoxWidth: MediaQuery.of(context).size.width / 4,
      textEditingController: TextEditingController(),
      isOriginalAnimation: false,
      enableButtonShadow: false,
      enableKeyboardFocus: true,
      buttonElevation: 0,
      onExpansionComplete: () {
        debugPrint('do something just after searchbox is opened.');
      },
      onCollapseComplete: () {
        debugPrint('do something just after searchbox is closed.');
      },
      onPressButton: (isSearchBarOpens) {
        debugPrint(
            'do something before animation started. It\'s the ${isSearchBarOpens ? 'opening' : 'closing'} animation');
      },
      trailingWidget:  Icon(
        Icons.search,
        size: 22,
        color: Colors.grey.shade800
      ),
      secondaryButtonWidget:  Icon(
        Icons.close,
        size: 20,
                color: Colors.grey.shade800
      ),
      buttonWidget: Icon(
        Icons.search,
        size: 25,
              color: Colors.grey.shade800
      ),
    );
  }
}
