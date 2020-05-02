import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    final Size _preferredSizePhone = Size.fromHeight(54.0); //appbar phone size
    final Size _preferredSizeTablet =
        Size.fromHeight(72.0); //appbar tablet size
    final double shortestSide =
        MediaQuery.of(context).size.shortestSide; //get any device size
    final bool _useMobileLayout = shortestSide <
        800; //set the device size (<800 phone; >800 tablet) you prefer
    return Scaffold(
        appBar: PreferredSize(
            preferredSize: _useMobileLayout
                ? _preferredSizePhone
                : _preferredSizeTablet, // appbar size (phone or tablet)
            child: Center(
              child: Container(
                alignment: Alignment.center,
                child: _useMobileLayout // appbar layout (phone or tablet)
                    ? _buildPhoneAppBar()
                    : _buildTabletAppBar(),
              ),
            )),
        body: _useMobileLayout
            ? _buildPhoneScrollView() // appbody layout (phone or tablet)
            : _buildTabletScrollView(),
        bottomNavigationBar: SizedBox(
          child:
              BottomAppBar(), // you can also customize your bottom appbar size/style
        ));
  }

  //phone layout
  AppBar _buildPhoneAppBar() {
    return AppBar(); // your phone appbar layout starts here...
  }

  CustomScrollView _buildPhoneScrollView() {
    // CustomScrollView widgets can ensure both screen orientations to app usability, landscape or portrait...
    return CustomScrollView(shrinkWrap: true, slivers: <Widget>[
      SliverPadding(
          padding: const EdgeInsets.all(
              00.0), //... also using SliverPadding, SliverList, SliverChildListDelegate widgets.
          sliver: SliverList(
            delegate: SliverChildListDelegate(<Widget>[]),
          ))
    ]); // your phone body layout starts here...
  }

  //tablet layout
  AppBar _buildTabletAppBar() {
    return AppBar(); // your tablet appbar layout starts here...
  }

  CustomScrollView _buildTabletScrollView() {
    // CustomScrollView widgets can ensure both screen orientations to app usability, landscape or portrait...
    return CustomScrollView(shrinkWrap: true, slivers: <Widget>[
      SliverPadding(
          padding: const EdgeInsets.all(
              00.0), //... also using SliverPadding, SliverList, SliverChildListDelegate widgets.
          sliver: SliverList(
            delegate: SliverChildListDelegate(<Widget>[]),
          ))
    ]); // your tablet body layout starts here...
  }
}
