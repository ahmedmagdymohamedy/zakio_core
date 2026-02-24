import 'package:supabase_flutter/supabase_flutter.dart';

abstract class ZakioCore {
  static void init() {
    Supabase.initialize(
      url: "https://fqsfcpwekbhtrybzdubb.supabase.co",
      anonKey: "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImZxc2ZjcHdla2JodHJ5YnpkdWJiIiwicm9sZSI6ImFub24iLCJpYXQiOjE3NzE3NDgwNjMsImV4cCI6MjA4NzMyNDA2M30.CegyAJQ2Z4UY78g_Q8ikwVjXNxFLKFuIAaTFAIb4Sj4",
    );
  }
}
