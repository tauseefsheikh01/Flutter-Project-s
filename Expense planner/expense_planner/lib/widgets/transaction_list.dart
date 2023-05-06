import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '../models/transaction.dart';

class TransactionList extends StatelessWidget {
  const TransactionList(
      {super.key, required this.transactions, required this.deleteTx});

  final List<Transaction> transactions;
  final Function deleteTx;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 500,
      child: transactions.isEmpty
          ? Column(
              children: [
                const SizedBox(
                  height: 20,
                ),
                Text(
                  'No transactions added yet!',
                  style: Theme.of(context).textTheme.titleMedium,
                ),
                const SizedBox(
                  height: 30,
                ),
                SizedBox(
                  height: 200,
                  child: Image.asset(
                    'assets/fonts/images/notfound.gif',
                    fit: BoxFit.cover,
                  ),
                ),
              ],
            )
          : ListView.builder(
              itemBuilder: (ctx, index) {
                return Card(
                  elevation: 8,
                  margin: const EdgeInsets.symmetric(
                    vertical: 10,
                    horizontal: 8,
                  ),
                  child: ListTile(
                    leading: CircleAvatar(
                      radius: 35,
                      child: Padding(
                        padding: const EdgeInsets.all(5),
                        child: FittedBox(
                          child: Text('\$${transactions[index].amount}'),
                        ),
                      ),
                    ),
                    title: Text(
                      transactions[index].title.toString(),
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                    subtitle: Text(
                      DateFormat.yMMMMd()
                          .format(transactions[index].date as DateTime),
                    ),
                    trailing: IconButton(
                      icon: const Icon(Icons.delete),
                      color: Colors.red,
                      onPressed: () => deleteTx(transactions[index].id),
                    ),
                  ),
                );
              },
              itemCount: transactions.length,
            ),
    );
  }
}





// Card(
//                   child: Row(
//                     children: [
//                       Container(
//                         margin: const EdgeInsets.symmetric(
//                           vertical: 10,
//                           horizontal: 15,
//                         ),
//                         decoration: BoxDecoration(
//                           border: Border.all(
//                             color: Theme.of(context).primaryColor,
//                             width: 2,
//                           ),
//                         ),
//                         padding: const EdgeInsets.all(10.0),
//                         child: Text(
//                           '\$${transactions[index].amount?.toStringAsFixed(2)}',
                          // style: TextStyle(
                          //   fontWeight: FontWeight.bold,
                          //   fontSize: 20,
//                             color: Theme.of(context).primaryColor,
//                           ),
//                         ),
//                       ),
//                       Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           Text(
//                             transactions[index].title.toString(),
//                             style: Theme.of(context).textTheme.titleMedium,
//                           ),
//                           Text(
//                             DateFormat.yMMMd().format(
//                               transactions[index].date as DateTime,
//                             ),
//                             style: const TextStyle(
//                                 fontWeight: FontWeight.bold,
//                                 fontSize: 12,
//                                 color: Colors.grey),
//                           ),
//                         ],
//                       ),
//                     ],
//                   ),
//                 );