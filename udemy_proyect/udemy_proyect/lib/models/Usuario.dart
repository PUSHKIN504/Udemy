// ignore: unused_import
// ignore_for_file: file_names

// ignore: unused_import

// ignore: unused_import
import "package:flutter/material.dart";

class UsuarioViewModel {
  // ignore: non_constant_identifier_names
  int? usu_Id;
  // ignore: non_constant_identifier_names
  String? usu_Usuario;
  // ignore: non_constant_identifier_names
  String? usu_Nombre;
  // ignore: non_constant_identifier_names
  String? usu_Apellido;
  // ignore: non_constant_identifier_names
  String? usu_Contrasena;
  // ignore: non_constant_identifier_names
  // DateTime? usu_FechaNacimiento;
  // ignore: non_constant_identifier_names
  String? usu_Sexo;
  // ignore: non_constant_identifier_names
  String? usu_Direccion;
  // ignore: non_constant_identifier_names
  String? usu_Telefono;
  // ignore: non_constant_identifier_names
  String? Mun_Id;
  String? Mun_Descripcion;
  // ignore: non_constant_identifier_names
  bool? usu_Estado;
  // ignore: non_constant_identifier_names
  String? usu_CorreoElectronico;
  // ignore: non_constant_identifier_names
  int? usu_UsuarioCreacion;
  // ignore: non_constant_identifier_names
  // bool? usu_Admin;
  // ignore: non_constant_identifier_names
  // int? rol_Id;

  // ignore: non_constant_identifier_names
  // DateTime? usu_FechaCreacion;
  // ignore: non_constant_identifier_names
  // int? usua_Modificacion;
  // ignore: non_constant_identifier_names
  // DateTime? usua_FechaModificacion;

  // ignore: non_constant_identifier_names
  // String? usua_CodigoV;
  // String? creacion;
  // String? modificacion;
  // // ignore: non_constant_identifier_names
  // String? rol_Descripcion;

  UsuarioViewModel(
      // ignore: non_constant_identifier_names
      { this.usu_Id,
       // ignore: non_constant_identifier_names
       this.usu_Usuario,
       // ignore: non_constant_identifier_names
       this.usu_Contrasena,
       // ignore: non_constant_identifier_names
       this.usu_Nombre,
       // ignore: non_constant_identifier_names
       this.usu_Apellido,
       // ignore: non_constant_identifier_names
       this.Mun_Descripcion,
      //  this.usu_FechaNacimiento,
       // ignore: non_constant_identifier_names
       this.usu_Sexo,
       // ignore: non_constant_identifier_names
       this.usu_Direccion,
       // ignore: non_constant_identifier_names
       this.usu_Telefono,
       // ignore: non_constant_identifier_names
       this.Mun_Id,
       // ignore: non_constant_identifier_names
      //  this.usu_Admin,
       // ignore: non_constant_identifier_names
      //  this.rol_Id,
       // ignore: non_constant_identifier_names
       this.usu_Estado,
       // ignore: non_constant_identifier_names
       this.usu_UsuarioCreacion,
       // ignore: non_constant_identifier_names
      //  this.usu_FechaCreacion,
       // ignore: non_constant_identifier_names
      //  this.usua_Modificacion,
       // ignore: non_constant_identifier_names
      //  this.usua_FechaModificacion,
       // ignore: non_constant_identifier_names
       this.usu_CorreoElectronico
       // ignore: non_constant_identifier_names
      //  this.usua_CodigoV,
      //  this.creacion,
      //  this.modificacion,
      //  // ignore: non_constant_identifier_names
      //  this.rol_Descripcion
       });

  UsuarioViewModel.fromJson(Map<String, dynamic> json)
      : usu_Id = json['usu_Id'],
        usu_Usuario = json['usu_Usuario'],
        usu_Contrasena = json['usu_Contrasena'],
        Mun_Descripcion=json['mun_Descripcion'],
        usu_Nombre = json['usu_Nombre'],
        usu_Apellido = json['usu_Apellido'],
        usu_Sexo = json['usu_Sexo'],
        usu_Direccion = json['usu_Direccion'],
        usu_Telefono = json['usu_Telefono'],
        Mun_Id = json['Mun_Id'],
     
        usu_Estado = json['usu_Estado'],
        usu_UsuarioCreacion = json['usu_UsuarioCreacion'],
      
        usu_CorreoElectronico = json['usu_CorreoElectronico']
        // usua_CodigoV = json['usua_CodigoV'],
        // creacion = json['creacion'],
        // modificacion = json['modificacion'],
        // rol_Descripcion = json['rol_Descripcion']
          // usu_FechaCreacion = DateTime.parse(json['usua_FechaCreacion']),
        // usua_Modificacion = json['usua_Modificacion'],
        // usua_FechaModificacion = DateTime.parse(json['usua_FechaModificacion']),
        // usu_FechaNacimiento = json['usu_FechaNacimiento'],
           // usu_Admin = json['usu_Admin'],
        // rol_Id = json['rol_Id'],
        ;

  Map<String, dynamic> toJson() => {
        'usua_Id': usu_Id,
        'usua_Usuario': usu_Usuario,
        'usu_Nombre': usu_Nombre,
        'usu_Apellido': usu_Apellido,
        // 'usu_FechaNacimiento': usu_FechaNacimiento,
        'usu_Sexo': usu_Sexo,
        'usu_Direccion': usu_Direccion,
        'usu_Telefono': usu_Telefono,
        'Mun_Id': Mun_Id,
        'mun_Descripcion':Mun_Descripcion,
        // 'usu_Admin': usu_Admin,
        // 'rol_Id': rol_Id,
        'usua_Estado': usu_Estado,
        'usu_UsuarioCreacion': usu_UsuarioCreacion,
        // 'usua_FechaCreacion': usu_FechaCreacion,
        // 'usua_Modificacion': usua_Modificacion,
        // 'usua_FechaModificacion': usua_FechaModificacion,
        'usua_CorreoElectronico': usu_CorreoElectronico,
        // 'usua_CodigoV': usua_CodigoV,
        // 'creacion': creacion,
        // 'modificacion': modificacion,
        // 'rol_Descripcion': rol_Descripcion,
      };
}
