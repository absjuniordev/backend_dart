// ignore_for_file: public_member_api_docs, sort_constructors_first
class NotciaModel {
  final int id;
  final String titulo;
  final String image;
  final DateTime dtPublicacao;
  final DateTime dtAtualizacao;

  NotciaModel({
    required this.id,
    required this.titulo,
    required this.image,
    required this.dtPublicacao,
    required this.dtAtualizacao,
  });

  @override
  String toString() {
    return 'NotciaModel(id: $id, titulo: $titulo, image: $image, dtPublicacao: $dtPublicacao, dtAtualizacao: $dtAtualizacao)';
  }
}
