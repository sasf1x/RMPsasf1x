import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'pages/home_page.dart';

<<<<<<< HEAD
Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Инициализация Supabase с временными данными (будет обновлено на странице)
  await Supabase.initialize(
    url: 'https://frvexfoezbscdbcvuxas.supabase.co',
    anonKey:
        'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImZydmV4Zm9lemJzY2RiY3Z1eGFzIiwicm9sZSI6ImFub24iLCJpYXQiOjE3NTk3NDY4ODgsImV4cCI6MjA3NTMyMjg4OH0.XDr9MFxBMX0P42a4MwjstxtZeh_Caqdyrfpfr7d9ec8',
  );

=======
const String supabaseUrl = 'https://bxtueltcnvkgtggjclnz.supabase.co';
const String supabaseAnonKey = 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImJ4dHVlbHRjbnZrZ3RnZ2pjbG56Iiwicm9sZSI6InNlcnZpY2Vfcm9sZSIsImlhdCI6MTc2MDI1OTYwMCwiZXhwIjoyMDc1ODM1NjAwfQ.iQfFswillAcRnzHprZYmuQ-uDS0HPNMQVWkGHizvrtU';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Supabase.initialize(url: supabaseUrl, anonKey: supabaseAnonKey);
>>>>>>> de3ebfdfd9d8fe9ea05a4809c82bb4a8162b9741
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}
