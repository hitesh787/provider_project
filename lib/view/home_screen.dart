import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_project/data/response/status.dart';
import 'package:provider_project/utils/routes/routes_name.dart';
import 'package:provider_project/utils/utils.dart';
import 'package:provider_project/view_model/home_view_model.dart';
import 'package:provider_project/view_model/user_view_model.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  HomeViewViewModel homeViewViewModel = HomeViewViewModel();

  @override
  void initState() {
    // TODO: implement initState
    homeViewViewModel.fetchMoviesListApi();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final userPrefernece = Provider.of<UserViewModel>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Home',
          style: TextStyle(
              color: Colors.black, fontWeight: FontWeight.bold, fontSize: 20),
        ),
        automaticallyImplyLeading: false,
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
        actions: [
          GestureDetector(
              onTap: () {
                userPrefernece.remove().then((value) {
                  Navigator.pushNamed(context, RoutesName.login);
                });
              },
              child: const Center(
                  child: Icon(
                Icons.login_rounded,
                color: Colors.black,
              ))),
          const SizedBox(
            width: 20,
          )
        ],
      ),
      backgroundColor: Colors.white,
      body: ChangeNotifierProvider<HomeViewViewModel>(
        create: (BuildContext context) => homeViewViewModel,
        child: Consumer<HomeViewViewModel>(
          builder: (context, value, _) {
            switch (value.moviesList.status) {
              case Status.LOADING:
                return const Center(child: CircularProgressIndicator());
              case Status.ERROR:
                return Center(child: Text(value.moviesList.message.toString()));
              case Status.COMPLETED:
                return ListView.builder(
                  padding: const EdgeInsets.all(20),
                    itemCount: value.moviesList.data!.movies!.length,
                    itemBuilder: (context, index) {
                      return Container(
                        margin: const EdgeInsets.all(5),
                        padding: const EdgeInsets.all(5),
                        decoration: BoxDecoration(border: Border.all(width: 1),borderRadius: BorderRadius.circular(15)),
                        child: Column(
                          children: [
                            ListTile(
                              leading: Image.network(value.moviesList.data!.movies![index].posterUrl.toString(),
                                height: 100,
                                width: 75,
                                fit: BoxFit.cover,
                                errorBuilder: (context, error, stack) {
                                  return const SizedBox(
                                      height: 75,
                                      width: 75,
                                      child: Icon(Icons.error, color: Colors.red,));
                                },
                              ),
                              title: Text(value.moviesList.data!.movies![index].title.toString(),style: const TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                              subtitle: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(value.moviesList.data!.movies![index].year.toString()),
                                  Text(value.moviesList.data!.movies![index].genres![0].toString()),
                                  Text(value.moviesList.data!.movies![index].duration.toString()),
                                  Text(value.moviesList.data!.movies![index].releaseDate.toString()),

                                ],
                              ),
                              trailing: Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Text(Utils.averageRating(value.moviesList.data!.movies![index].ratings!).toStringAsFixed(1)),
                                  const Icon(Icons.star, color: Colors.yellow,)
                                ],
                              ),
                            ),
                            Text(value.moviesList.data!.movies![index].storyline.toString(),maxLines: 2,overflow: TextOverflow.ellipsis),

                          ],
                        ),
                      );
                    },
                );
              default:
                return Container();
            }
          },
        ),
      ),
    );
  }
}
