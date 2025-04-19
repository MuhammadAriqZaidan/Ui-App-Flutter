import 'package:flutter/material.dart';
import '../models/mitra_model.dart';
import '../services/mitra_service.dart';

class DistributorListPage extends StatefulWidget {
  const DistributorListPage({super.key});

  @override
  State<DistributorListPage> createState() => _DistributorListPageState();
}

class _DistributorListPageState extends State<DistributorListPage> {
  late Future<List<MitraModel>> _distributorFuture;

  @override
  void initState() {
    super.initState();
    _distributorFuture = MitraService().getDistributors();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('List Distributor')),
      body: FutureBuilder<List<MitraModel>>(
        future: _distributorFuture,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
            return const Center(child: Text('Belum ada distributor.'));
          }

          final distributors = snapshot.data!;
          return ListView.builder(
            itemCount: distributors.length,
            itemBuilder: (context, index) {
              final mitra = distributors[index];
              return ListTile(
                leading: CircleAvatar(child: Text(mitra.nama[0].toUpperCase())),
                title: Text(mitra.nama),
                subtitle: Text(mitra.noTelp),
                trailing: Text(mitra.alamat),
              );
            },
          );
        },
      ),
    );
  }
}
