import 'package:zakio_core/data/models/child/child.dart';
import 'package:zakio_core/data/supabase/table/i_table.dart';
import 'package:zakio_core/data/supabase/table/tables/children_table.dart';

abstract class DBManager {
  static ITable<Child, ChildrenTableColumn> childrenTable = ChildrenTable();
}
