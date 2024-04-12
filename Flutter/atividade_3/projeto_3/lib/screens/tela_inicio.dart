import 'package:flutter/material.dart';

class TelaInicio extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Container(
            child: Image.asset("assets/images/logo_banco.png",
            width: 40,)
//                 child: Image.asset(
//                   'asset/images/LALA LIVE ICON 4.png',
//                 ),
          ),
        title: Text('Banco Clone'),
        actions: [
          IconButton(
            icon: Icon(Icons.notifications),
            onPressed: () {
              // Adicione ação para notificações
            },
          ),
          IconButton(
            icon: Icon(Icons.settings),
            onPressed: () {
              // Adicione ação para configurações
            },
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            color: Colors.blue,
            padding: EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Saldo disponível',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18.0,
                  ),
                ),
                SizedBox(height: 10.0),
                Text(
                  'R\$ 1.500,00',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 20.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        // Adicione ação para ver extrato
                      },
                      child: Text('Ver extrato'),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        // Adicione ação para últimas transações
                      },
                      child: Text('Últimas transações'),
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: 20.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton.icon(
                onPressed: () {
                  // Adicione ação para transferir
                },
                icon: Icon(Icons.attach_money),
                label: Text('Transferir'),
              ),
              ElevatedButton.icon(
                onPressed: () {
                  // Adicione ação para pagar
                },
                icon: Icon(Icons.payment),
                label: Text('Pagar'),
              ),
              ElevatedButton.icon(
                onPressed: () {
                  // Adicione ação para depositar
                },
                icon: Icon(Icons.account_balance),
                label: Text('Depositar'),
              ),
              ElevatedButton.icon(
                onPressed: () {
                  // Adicione ação para cartões
                },
                icon: Icon(Icons.credit_card),
                label: Text('Cartões'),
              ),
            ],
          ),
          SizedBox(height: 20.0),
          Text(
            'Serviços',
            style: TextStyle(
              fontSize: 18.0,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          Expanded(
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 5,
              itemBuilder: (context, index) {
                return Container(
                  margin: EdgeInsets.all(10.0),
                  padding: EdgeInsets.all(10.0),
                  color: Colors.grey,
                  child: Text('Serviço ${index + 1}'),
                );
              },
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.compare_arrows),
            label: 'Movimentações',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.payment),
            label: 'Pagamentos',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.more_horiz),
            label: 'Mais',
          ),
        ],
      ),
    );
  }
}
