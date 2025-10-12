import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class SupabasePage extends StatefulWidget {
  const SupabasePage({super.key});

  @override
  State<SupabasePage> createState() => _SupabasePageState();
}

class _SupabasePageState extends State<SupabasePage> {
  final supabase = Supabase.instance.client;
  List<dynamic> messages = [];

  @override
  void initState() {
    super.initState();
    fetchData();
  }

  Future<void> fetchData() async {
    final response = await supabase.from('messages').select();
    setState(() {
      messages = response;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Supabase Messages')),
      body: messages.isEmpty
          ? const Center(child: CircularProgressIndicator())
          : ListView.builder(
              itemCount: messages.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(messages[index]['text']),
                );
              },
            ),
    );
  }
}
