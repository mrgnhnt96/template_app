abstract class IRepository<T> {
  Future<void> save(T object);
  Future<T> findById(String id);
  Future<List<T>> getAll();
  Future<void> saveAll(List<T> objectList);
}
