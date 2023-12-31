abstract class GeneriService<T> {
  T findOne(int id);
  List<T> findAll();
  bool save(T value);
  bool delete(T value);
}
