import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ScrollScreen extends StatefulWidget {
  const ScrollScreen({super.key});

  @override
  State<ScrollScreen> createState() => _ScrollScreenState();
}

class _ScrollScreenState extends State<ScrollScreen> {

  List<int> imagesId = [0,1,2,3,4];
  final ScrollController scrollController = ScrollController();
  bool isLoading = false;
  bool isMounted = true;

  @override
  void initState() {
    super.initState();
    scrollController.addListener((){
      if ((scrollController.position.pixels +500) >= scrollController.position.maxScrollExtent ){
        loadNextPage();
      }
    });
  }

  @override
  void dispose() {
    scrollController.dispose();
    isMounted = false;
    super.dispose();
  }

  Future loadNextPage() async{
    if(isLoading) return;
    isLoading = true;
    setState(() {});
    await Future.delayed(Duration(seconds: 2));
    addFiveImages();
    isLoading = false;
    if (!isMounted) return;
    setState(() {});
    moveScrollToBottom();
  }

  void addFiveImages(){
    final lastId = imagesId.last;
    imagesId.addAll(
      [1,2,3,4,5].map((e) => lastId + e)
    );
  }

  Future<void> onRefresh() async{
    await Future.delayed(Duration(seconds: 3));
    if(!isMounted) return;
    isLoading = true;
    setState(() {
    }); 
    final lastId = imagesId.last;
    imagesId.clear();
    imagesId.add(lastId + 1);
    isLoading = false;
    addFiveImages();
    setState(() {
    });
  }

  void moveScrollToBottom(){
    if(scrollController.position.pixels + 100 <= scrollController.position.maxScrollExtent) return;
    
    scrollController.animateTo(
      scrollController.position.pixels +120,
      duration: Duration(milliseconds: 300),
      curve: Curves.fastOutSlowIn);

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: MediaQuery.removePadding(
        context: context,
        removeTop: true,
        removeBottom: true,
        child: RefreshIndicator(
          onRefresh: onRefresh,
          edgeOffset: 10,
          strokeWidth: 2,
          child: ListView.builder(
            controller: scrollController,
            itemCount: imagesId.length,
            itemBuilder: (context, index){
            return FadeInImage(
              fit: BoxFit.cover,
              width: double.infinity,
              height: 300,
              placeholder: AssetImage('assets/images/loading-img.gif'),
              image: NetworkImage('https://picsum.photos/id/${imagesId[index]}/200/300'),
            );
          }),
        ),
      ),
      floatingActionButton: 
        FloatingActionButton(
          onPressed: context.pop, 
          child: isLoading ? SpinPerfect(infinite: true, child: FadeIn(child: Icon(Icons.refresh_rounded))) : Icon(Icons.arrow_back_outlined) ,
        ),
    );
  }
}