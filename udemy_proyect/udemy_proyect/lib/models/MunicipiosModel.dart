// ignore_for_file: file_names

class MunicipioViewModel {
  final String id;
  final String descripcion;
  // final int departamentoId;
  // final String usuarioCreacion;
  // final DateTime fechaCreacion;
  // final String usuarioModificacion;
  // final DateTime fechaModificacion;
  // final bool estado;

  MunicipioViewModel({
    required this.id,
    required this.descripcion,
    // required this.departamentoId,
    // required this.usuarioCreacion,
    // required this.fechaCreacion,
    // required this.usuarioModificacion,
    // required this.fechaModificacion,
    // required this.estado,
  });

  factory MunicipioViewModel.fromJson(Map<String, dynamic> json) {
    return MunicipioViewModel(
      id: json['mun_Id'] as String,
      descripcion: json['mun_Descripcion'] as String,
      // departamentoId: json['Dep_Id'] as int,
      // usuarioCreacion: json['Mun_UsuarioCreacion'] as String,
      // fechaCreacion: DateTime.parse(json['Mun_FechaCreacion'] as String),
      // usuarioModificacion: json['Mun_UsuarioModificacion'] as String,
      // fechaModificacion: DateTime.parse(json['Mun_FechaModificacion'] as String),
      // estado: (json['Mun_Estado'] as int) == 1,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'mun_Id': id,
      'mun_Descripcion': descripcion,
      // 'Dep_Id': departamentoId,
      // 'Mun_UsuarioCreacion': usuarioCreacion,
      // 'Mun_FechaCreacion': fechaCreacion.toIso8601String(),
      // 'Mun_UsuarioModificacion': usuarioModificacion,
      // 'Mun_FechaModificacion': fechaModificacion.toIso8601String(),
      // 'Mun_Estado': estado ? 1 : 0,
    };
  }
}