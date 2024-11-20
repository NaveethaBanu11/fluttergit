import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../../widgets/card_widget/card_widget.dart';
import '../task_details.dart';

class OpenWork extends StatelessWidget {
  const OpenWork({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
          padding: const EdgeInsets.only(left: 5),
          child: SingleChildScrollView(
            child: Column(
              children: [
                CardList(
                  requestNo: '#321',
                  work: 'Electrcial Work',
                  name: 'Mr Muthu',
                  apartmentNo: ' AP1-B2/743',
                  status: 'New',
                  date: 'Oct 20',
                  onPressed: () => GoRouter.of(context).push('/taskDetails'),
                ),
                CardList(
                  requestNo: '#321',
                  work: 'Plumbing Work',
                  name: 'Mr Muthu',
                  apartmentNo: ' AP1-B2/743',
                  status: 'New',
                  date: 'Oct 20',
                  onPressed: () =>
                      GoRouter.of(context).pushNamed(TaskDetails.routeName),
                ),
                CardList(
                  requestNo: '#321',
                  work: 'Plumbing Work',
                  name: 'Mr Muthu',
                  apartmentNo: ' AP1-B2/743',
                  status: 'New',
                  date: 'Oct 20',
                  onPressed: () =>
                      GoRouter.of(context).pushNamed(TaskDetails.routeName),
                ),
                CardList(
                  requestNo: '#321',
                  work: 'Painting Work',
                  name: 'Mr Muthu',
                  apartmentNo: ' AP1-B2/743',
                  status: 'New',
                  date: 'Oct 20',
                  onPressed: () =>
                      GoRouter.of(context).pushNamed(TaskDetails.routeName),
                ),
                CardList(
                  requestNo: '#321',
                  work: 'Ac Repair Work',
                  name: 'Mr Muthu',
                  apartmentNo: ' AP1-B2/743',
                  status: 'New',
                  date: 'Oct 20',
                  onPressed: () =>
                      GoRouter.of(context).pushNamed(TaskDetails.routeName),
                ),
                CardList(
                  requestNo: '#321',
                  work: 'Electrcial Work',
                  name: 'Mr Muthu',
                  apartmentNo: ' AP1-B2/743',
                  status: 'New',
                  date: 'Oct 20',
                  onPressed: () =>
                      GoRouter.of(context).pushNamed(TaskDetails.routeName),
                ),
                CardList(
                  requestNo: '#321',
                  work: 'Plumbing Work',
                  name: 'Mr Muthu',
                  apartmentNo: ' AP1-B2/743',
                  status: 'New',
                  date: 'Oct 20',
                  onPressed: () =>
                      GoRouter.of(context).pushNamed(TaskDetails.routeName),
                ),
                CardList(
                  requestNo: '#321',
                  work: 'Painting Work',
                  name: 'Mr Muthu',
                  apartmentNo: ' AP1-B2/743',
                  status: 'New',
                  date: 'Oct 20',
                  onPressed: () =>
                      GoRouter.of(context).pushNamed(TaskDetails.routeName),
                ),
                CardList(
                  requestNo: '#321',
                  work: 'Ac Repair Work',
                  name: 'Mr Muthu',
                  apartmentNo: ' AP1-B2/743',
                  status: 'New',
                  date: 'Oct 20',
                  onPressed: () =>
                      GoRouter.of(context).pushNamed(TaskDetails.routeName),
                ),
              ],
            ),
          )),
    );
  }
}
