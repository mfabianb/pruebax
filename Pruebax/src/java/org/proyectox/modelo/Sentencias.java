package org.proyectox.modelo;

/**
 *
 * @author mfab
 */
public class Sentencias {

    public static String getIiniciarSesion(String usuario, String password) {
        return "SELECT idUsuario, nombre, email, tipo FROM USUARIO "
                + "WHERE email='" + usuario + "' AND password='" + password + "'";
    }

    public static String insertarNuevoMensajero(String nombre, String procedencia,
            String identificacion, String destino) {
        return "INSERT INTO MENSAJERO (nombre, procedencia, identificacion, destino, entrada, tipoIdentificacion) "
                + "values ('" + nombre + "','" + procedencia + "','" + identificacion + "','" + destino + "', CURRENT_TIMESTAMP, 'OTRA')";
    }

    public static String insertarNuevoAsunto(String nombre, String fechaTermino, String tipo, int idCreador, String archivo) {
        return "INSERT INTO ASUNTO (idCreador, nombre, fechaInicio, horaInicio, fechaTermino, tipo, estado, descripcion) VALUES "
                + "(" + idCreador + ", '" + nombre + "', CURDATE(), CURTIME(), '" + fechaTermino + "', " + tipo + ", 1, \""+archivo+"\")";
    }
    
    public static String insertarNuevoUsuario(int idUsuario, String nombre, String email, String password, int tipo){
        return "INSERT INTO USUARIO (idUsuario, nombre, email, password, tipo) VALUES "
                + "(" + idUsuario + ","+ nombre +","+email +","+password +","+ tipo+")";
    }
    
    public static String insertarUsuarioDepto(int idUsuario, int idDepto){
        return "INSERT INTO USUARIO_DEPTO(idUsuario,idDepto) VALUES ("
                + idUsuario +", " +idDepto + ")";
    }
    
    public static String insertarJefeDepto(int idJefe, int idDepto){
        return "INSERT INTO JEFE_DEPTO(idJefe,idDepto) VALUES ("
                + idJefe +", " +idDepto + ")";
    }
    public static String insertarJefeArea(int idJefe, int idArea){
        return "INSERT INTO JEFE_AREA(idJefe,idArea) VALUES ("
                + idJefe +", " +idArea + ")";
    }
    
     public static String insertarTurnoRechazado(int idAsunto, int idUsuario, String fechaRechazo, String horaRechazo, String justificacion){
        return "INSERT INTO turno_rechazado (idAsunto, idUsuario, fechaRechazo, horaRechazo, justificacion) VALUES ("
                +idAsunto+","+idUsuario+","+fechaRechazo+","+horaRechazo+","+justificacion+")";
    }
     
     public static String insertarTurnoAceptado(int idAsunto, int idUsuario, String fechaAceptacion, String horaAceptacion){
        return "INSERT INTO turno_aceptado (idAsunto, idUsuario, fechaAceptacion, horaAceptacion) VALUES ("
                +idAsunto+","+idUsuario+","+fechaAceptacion+","+horaAceptacion+")";
    }
     
     public static String insertarActividad(int idActividad, int idAsunto, int idUsuario, String nombre, String fecha, String hora, String descripcion){
         return "INSERT INTO actividad (idActividad, idAsunto, idUsuario, nombre, fecha, hora, descripcion) VALUES ("
                 +idActividad+","+idAsunto+","+idUsuario+","+nombre+","+fecha+","+hora+","+descripcion+")";
     }
   
     public static String insertarReporte(int idReporte, String nombre, String contenido, String fecha, String hora, int idAsunto, int idUsuario){
         return "INSERT INTO reporte (idReporte, nombre, contenido, fecha, hora, idAsunto, idUsuario) VALUES ("
                 +idReporte+","+nombre+","+contenido+","+fecha+","+hora+","+idAsunto+","+idUsuario+")";
     }
     
     public static String insertarSolicitudInfo(String idSolicitud, String fecha, String hora, String titulo, String descripcion, int idAsunto, int idUsuario){
         return "INSERT INTO solicitud_info (idSolicitud, fecha, hora, titulo, descripcion, idAsunto, idUsuario) VALUES ("
                 +idSolicitud+","+fecha+","+hora+","+titulo+","+descripcion+","+idAsunto+","+idUsuario+")";
     }
     
     public static String insertarRespuestaParcial(int idRespuesta, String idSolicitud, int idDestinatario){
         return "INSERT INTO respuesta (idRespuesta, idSolicitud, idDestinatario) VALUES ("
                 +idRespuesta+","+idSolicitud+","+idDestinatario +")";
     }
     
     public static String insertarRespuestaPCompleta(int idRespuesta, String respuesta, String fechaRspuesta, String horaRespuesta){
         return "UPDATE respuesta SET respuesta="+respuesta+", fechaRespuesta="+fechaRspuesta+",horaRespuesta="+horaRespuesta+" WHERE idRespuesta = "+idRespuesta;
     }
    
    public static String getAsuntos(){
        return "SELECT * FROM asunto";
    }
    
    public static String getAsunto(int idAsunto){
        return "SELECT * FROM asunto WHERE idasunto = "+idAsunto;
    }
    
    public static String getUsuarios(){
        return "SELECT * FROM usuario";
    }
    
    public static String getUsuario(int idUsuario){
        return "SELECT * FROM usuario WHERE idusuario = "+idUsuario;
    }
    
    public static String getAreas(){
        return "SELECT * FROM area";
    }
    
    public static String getArea(int idArea){
        return "SELECT * FROM area WHERE idArea = "+idArea;
    }
    
    public static String getDeptos(){
        return "SELECT * FROM departamento";
    }
    
    public static String getDepto(int idDepto){
        return "SELECT * FROM departamento WHERE iddepto = "+idDepto;
    }
    
    public static String getAsuntosPendientes(int idUsuario){
        return "SELECT a.* from asunto a,usuario u, turno t, turno_aceptado ta WHERE u.idUsuario=t.idUsuario and ta.idUsuario = t.idUsuario and t.idAsunto=a.idAsunto and u.idUsuario="+idUsuario;
    }
    
    public static String getAsuntosJefe(int idJefe){
        return "SELECT * FROM asunto WHERE idCreador = "+idJefe;
    }
    
    public static String getEmpleados(){
        return "SELECT * FROM usuario";
    }
    
    public static String getTurnos(int idAsunto){
        return "SELECT usuario.nombre FROM turno,usuario WHERE turno.idUsuario = usuario.idUsuario and idAsunto="+idAsunto;
    }
    
    public static String insertarTurno(int idAsunto, int idUsuario){
        return "INSERT INTO turno (idAsunto,idUsuario,fechaPeticion,horaPeticion,indicaciones) VALUES ("
                +idAsunto+","+idUsuario+",date(now()),time(now()),\"Se te ha asignado un asunto\")";
    }
    
    
     
     
    /*
    public static String getUsuario(int id) {
        return "select idUsuario, Correo, Usuario, Password, Edad, Tipo, idEstado from Usuario where idUsuario='" + id + "'";
    }

    public static String getTodosUsuarios() {
        return "select Usuario.idUsuario, Usuario.Usuario, Usuario.Correo, "
                + "Usuario.Password, Usuario.Edad, Usuario.Tipo, Estado.Estado, Estado.idEstado "
                + "from Usuario "
                + "join (Estado) "
                + "on (Usuario.idEstado=Estado.idEstado) "
                + "order by Usuario.idUsuario asc";
    }
    
    
    public static String getTodosUsuarios(int idTipo) {
        return "select Usuario.idUsuario, Usuario.Usuario, Usuario.Correo, "
                + "Usuario.Password, Usuario.Edad, Usuario.Tipo, Estado.Estado, Estado.idEstado "
                + "from Usuario "
                + "join (Estado) "
                + "on (Usuario.idEstado=Estado.idEstado) "
                + "where Usuario.Tipo='" + idTipo + "' order by Usuario.idUsuario asc";
    }

    public static String getTodosUsuarios(int idTipo, String nombre) {
        return "select Usuario.idUsuario, Usuario.Usuario, Usuario.Correo, "
                + "Usuario.Password, Usuario.Edad, Usuario.Tipo, Estado.Estado, Estado.idEstado "
                + "from Usuario "
                + "join (Estado) "
                + "on (Usuario.idEstado=Estado.idEstado) "
                + "where Usuario.Tipo='" + idTipo + "' and Usuario.Usuario like '%" + nombre + "%' order by Usuario.idUsuario asc";
    }

    public static String getTodosUsuarios(String nombre) {
        return "select Usuario.idUsuario, Usuario.Usuario, Usuario.Correo, "
                + "Usuario.Password, Usuario.Edad, Usuario.Tipo, Estado.Estado, Estado.idEstado "
                + "from Usuario "
                + "join (Estado) "
                + "on (Usuario.idEstado=Estado.idEstado) "
                + "where Usuario.Usuario like '%" + nombre + "%' order by Usuario.idUsuario asc";
    }

    public static String getExisteUsuario(String u) {
        return "select Usuario, idUsuario from Usuario where Usuario='" + u + "' order by idUsuario asc";
    }

    public static String getExisteCorreo(String c) {
        return "select Usuario from Usuario where Correo=" + c + " order by idUsuario asc";
    }

    public static String getTemas() {
        return "select * from Tema order by idTema asc";
    }

    public static String getPreguntasPorTemaCriterio(String t, String c, String li, String ls) {
        return "select Pregunta.idPregunta, Pregunta.Pregunta, Tema.idTema, Tema.Tema, Estado.idEstado, Estado.Estado, "
                + "Pregunta.Respuesta0, Pregunta.Respuesta1, Pregunta.Respuesta2, Pregunta.Respuesta3, "
                + "Pregunta.Recurso0, Pregunta.Recurso1, Pregunta.Recurso2, Pregunta.Recurso3, Pregunta.Correcta "
                + "from Pregunta "
                + "join (Tema, Estado) "
                + "on (Tema.idTema=Pregunta.idTema and Pregunta.idEstado=Estado.idEstado) "
                + "where Estado.idEstado between " + li + " and " + ls + " and Tema.idTema=" + t + " and Pregunta.Pregunta like '%" + c + "%' "
                + "order by Pregunta.idPregunta asc";
    }

    public static String getPreguntasPorCriterio(String c, String li, String ls) {
        return "select Pregunta.idPregunta, Pregunta.Pregunta, Tema.idTema, Tema.Tema, Estado.idEstado, Estado.Estado, "
                + "Pregunta.Respuesta0, Pregunta.Respuesta1, Pregunta.Respuesta2, Pregunta.Respuesta3, "
                + "Pregunta.Recurso0, Pregunta.Recurso1, Pregunta.Recurso2, Pregunta.Recurso3, Pregunta.Correcta "
                + "from Pregunta "
                + "join (Tema, Estado) "
                + "on (Tema.idTema=Pregunta.idTema and Pregunta.idEstado=Estado.idEstado) "
                + "where Estado.idEstado between " + li + " and " + ls + " and Pregunta.Pregunta like '%" + c + "%' "
                + "order by Pregunta.idPregunta asc";
    }

    public static String insertarNuevaPregunta(Pregunta p) {
        String[] insertar = p.getDatosInsert();
        return "insert into Pregunta(idTema, idEstado, Pregunta, RecursoP, Respuesta0, Respuesta1, Respuesta2, Respuesta3, "
                + "Recurso0, Recurso1, Recurso2, Recurso3, Correcta) "
                + "values (" + insertar[0] + ", 3, '" + insertar[1] + "','-', "
                + "'" + insertar[2] + "', '" + insertar[4] + "', '" + insertar[6] + "', '" + insertar[8] + "', "
                + "'" + insertar[3] + "', '" + insertar[5] + "', '" + insertar[7] + "', '" + insertar[9] + "', "
                + "" + insertar[10] + ")";
    }

    public static String eliminarPregunta(String id) {
        return "update Pregunta set idEstado=5 where idPregunta=" + id;
    }

    public static String aceptarPregunta(String id) {
        return "update Pregunta set idEstado=1 where idPregunta=" + id;
    }

    public static String rechazarPregunta(String id) {
        return "update Pregunta set idEstado=2 where idPregunta=" + id;
    }

    public static String eliminarMaterial(String id) {
        return "update Material set idEstado=5 where idMaterial=" + id;
    }

    public static String aceptarMaterial(String id) {
        return "update Material set idEstado=1 where idMaterial=" + id;
    }

    public static String rechazarMaterial(String id) {
        return "update Material set idEstado=2 where idMaterial=" + id;
    }

    public static String eliminarUsuario(String id) {
        return "update Usuario set idEstado=5 where idUsuario=" + id;
    }

    public static String aceptarUsuario(String id) {
        return "update Usuario set idEstado=1 where idUsuario=" + id;
    }

    public static String getPreguntaPorId(String id, String li, String ls) {
        return "select Pregunta.idPregunta, Pregunta.Pregunta, Tema.idTema, Tema.Tema, Estado.idEstado, Estado.Estado, "
                + "Pregunta.Respuesta0, Pregunta.Respuesta1, Pregunta.Respuesta2, Pregunta.Respuesta3, "
                + "Pregunta.Recurso0, Pregunta.Recurso1, Pregunta.Recurso2, Pregunta.Recurso3, Pregunta.Correcta "
                + "from Pregunta "
                + "join (Tema, Estado) "
                + "on (Tema.idTema=Pregunta.idTema and Pregunta.idEstado=Estado.idEstado) "
                + "where Estado.idEstado between " + li + " and " + ls + " and Pregunta.idPregunta=" + id + " "
                + "order by Pregunta.idPregunta asc";
    }

    public static String modificarPregunta(Pregunta p) {
        String[] insertar = p.getDatosInsert();
        return "update Pregunta set idTema='" + insertar[0] + "', idEstado='4', Pregunta='" + insertar[1] + "', "
                + "RecursoP='-', "
                + "Respuesta0='" + insertar[2] + "', Respuesta1='" + insertar[4] + "', Respuesta2='" + insertar[6] + "', Respuesta3='" + insertar[8] + "', "
                + "Recurso0='" + insertar[3] + "', Recurso1='" + insertar[5] + "', Recurso2='" + insertar[7] + "', Recurso3='" + insertar[9] + "', "
                + "Correcta='" + insertar[10] + "' where idPregunta='" + insertar[11] + "'";
    }

    public static String modificarMaterial(Material m) {
        String[] insertar = m.getDatosInsertarMaterial();
        return "update Material set idTema='" + insertar[2] + "', idEstado='4', Nombre='" + insertar[4] + "', "
                + "Descripcion='" + insertar[5] + "', Recurso='" + insertar[6] + "', idTipo='" + insertar[3] + "' "
                + "where idMaterial='" + insertar[0] + "'";
    }

    public static String insertarNuevoMaterial(Material m) {
        String[] insertar = m.getDatosInsertarMaterial();
        return "insert into Material (idEstado, idTema, idTipo, Nombre, Descripcion, Recurso) values "
                + "('" + insertar[1] + "', '" + insertar[2] + "', '" + insertar[3] + "', "
                + "'" + insertar[4] + "', '" + insertar[5] + "', '" + insertar[6] + "')";
    }

    public static String modificarUsuario(String idUsuario, String correo, String password, String edad, String tipo) {
        return "update Usuario set Correo='" + correo + "', Password='" + password + "', Edad='" + edad + "', "
                + "Tipo='" + tipo + "' where idUsuario='" + idUsuario + "'";
    }

    public static String getMatrialesCriterios(String idTema, String nombre, String descripcion, String idTipo, String li, String ls) {
        return "select Material.idMaterial, Material.Nombre, Material.Descripcion, Material.idEstado, Estado.Estado, "
                + "Material.idTema, Tema.Tema, Material.idTipo, Tipo.Tipo, Material.Recurso "
                + "from Material "
                + "join (Estado, Tema, Tipo) on (Material.idEstado=Estado.idEstado and Material.idTema=Tema.idTema and Material.idTipo=Tipo.idTipo) "
                + "where Estado.idEstado between " + li + " and " + ls + " and Material.idTema=" + idTema + " and Material.Nombre like '%" + nombre + "%' "
                + "and Material.Descripcion like '%" + descripcion + "%' and Material.idTipo=" + idTipo + " "
                + "order by Material.idMaterial asc";
    }

    public static String getMatrialesCriterios(String nombre, String descripcion, String li, String ls) {
        return "select Material.idMaterial, Material.Nombre, Material.Descripcion, Material.idEstado, Estado.Estado, "
                + "Material.idTema, Tema.Tema, Material.idTipo, Tipo.Tipo, Material.Recurso "
                + "from Material "
                + "join (Estado, Tema, Tipo) on (Material.idEstado=Estado.idEstado and Material.idTema=Tema.idTema and Material.idTipo=Tipo.idTipo) "
                + "where Estado.idEstado between " + li + " and " + ls + " and Material.Nombre like '%" + nombre + "%' "
                + "and Material.Descripcion like '%" + descripcion + "%' "
                + "order by Material.idMaterial asc";
    }

    public static String getMatrialesCriteriosTipo(String nombre, String descripcion, String idTipo, String li, String ls) {
        return "select Material.idMaterial, Material.Nombre, Material.Descripcion, Material.idEstado, Estado.Estado, "
                + "Material.idTema, Tema.Tema, Material.idTipo, Tipo.Tipo, Material.Recurso "
                + "from Material "
                + "join (Estado, Tema, Tipo) on (Material.idEstado=Estado.idEstado and Material.idTema=Tema.idTema and Material.idTipo=Tipo.idTipo) "
                + "where Estado.idEstado between " + li + " and " + ls + " and Material.Nombre like '%" + nombre + "%' "
                + "and Material.Descripcion like '%" + descripcion + "%' and Material.idTipo=" + idTipo + " "
                + "order by Material.idMaterial asc";
    }

    public static String getMatrialesCriteriosTema(String nombre, String descripcion, String idTema, String li, String ls) {
        return "select Material.idMaterial, Material.Nombre, Material.Descripcion, Material.idEstado, Estado.Estado, "
                + "Material.idTema, Tema.Tema, Material.idTipo, Tipo.Tipo, Material.Recurso "
                + "from Material "
                + "join (Estado, Tema, Tipo) on (Material.idEstado=Estado.idEstado and Material.idTema=Tema.idTema and Material.idTipo=Tipo.idTipo) "
                + "where Estado.idEstado between " + li + " and " + ls + " and  Material.idTema=" + idTema + " and Material.Nombre like '%" + nombre + "%' "
                + "and Material.Descripcion like '%" + descripcion + "%' "
                + "order by Material.idMaterial asc";
    }
    
    
    
    
    
    
    
    
    
    
    
    public static String getMatrialesCriteriosDisponibles(String idTema, String nombre, String descripcion, String idTipo, String li, String ls) {
        return "select Material.idMaterial, Material.Nombre, Material.Descripcion, Material.idEstado, Estado.Estado, "
                + "Material.idTema, Tema.Tema, Material.idTipo, Tipo.Tipo, Material.Recurso "
                + "from Material "
                + "join (Estado, Tema, Tipo) on (Material.idEstado=Estado.idEstado and Material.idTema=Tema.idTema and Material.idTipo=Tipo.idTipo) "
                + "where Estado.idEstado between " + li + " and " + ls + " and Material.idTema=" + idTema + " and Material.Nombre like '%" + nombre + "%' "
                + "and Material.Descripcion like '%" + descripcion + "%' and Material.idTipo=" + idTipo + " "
                + "order by Material.idMaterial asc";
    }

    public static String getMatrialesCriteriosDisponibles(String nombre, String descripcion, String li, String ls) {
        return "select Material.idMaterial, Material.Nombre, Material.Descripcion, Material.idEstado, Estado.Estado, "
                + "Material.idTema, Tema.Tema, Material.idTipo, Tipo.Tipo, Material.Recurso "
                + "from Material "
                + "join (Estado, Tema, Tipo) on (Material.idEstado=Estado.idEstado and Material.idTema=Tema.idTema and Material.idTipo=Tipo.idTipo) "
                + "where Estado.idEstado between " + li + " and " + ls + " and Material.Nombre like '%" + nombre + "%' "
                + "and Material.Descripcion like '%" + descripcion + "%' "
                + "order by Material.idMaterial asc";
    }

    public static String getMatrialesCriteriosTipoDisponibles(String nombre, String descripcion, String idTipo, String li, String ls) {
        return "select Material.idMaterial, Material.Nombre, Material.Descripcion, Material.idEstado, Estado.Estado, "
                + "Material.idTema, Tema.Tema, Material.idTipo, Tipo.Tipo, Material.Recurso "
                + "from Material "
                + "join (Estado, Tema, Tipo) on (Material.idEstado=Estado.idEstado and Material.idTema=Tema.idTema and Material.idTipo=Tipo.idTipo) "
                + "where Estado.idEstado between " + li + " and " + ls + " and Material.Nombre like '%" + nombre + "%' "
                + "and Material.Descripcion like '%" + descripcion + "%' and Material.idTipo=" + idTipo + " "
                + "order by Material.idMaterial asc";
    }

    public static String getMatrialesCriteriosTemaDisponibles(String nombre, String descripcion, String idTema, String li, String ls) {
        return "select Material.idMaterial, Material.Nombre, Material.Descripcion, Material.idEstado, Estado.Estado, "
                + "Material.idTema, Tema.Tema, Material.idTipo, Tipo.Tipo, Material.Recurso "
                + "from Material "
                + "join (Estado, Tema, Tipo) on (Material.idEstado=Estado.idEstado and Material.idTema=Tema.idTema and Material.idTipo=Tipo.idTipo) "
                + "where Estado.idEstado between " + li + " and " + ls + " and  Material.idTema=" + idTema + " and Material.Nombre like '%" + nombre + "%' "
                + "and Material.Descripcion like '%" + descripcion + "%' "
                + "order by Material.idMaterial asc";
    }
    
    
    
    
    
    
    
    
    
    

    public static String getUnMaterial(String idMaterial, String li, String ls) {
        return "select Material.idMaterial, Material.Nombre, Material.Descripcion, Material.idEstado, Estado.Estado, "
                + "Material.idTema, Tema.Tema, Material.idTipo, Tipo.Tipo, Material.Recurso "
                + "from Material "
                + "join (Estado, Tema, Tipo) on (Material.idEstado=Estado.idEstado and Material.idTema=Tema.idTema and Material.idTipo=Tipo.idTipo) "
                + "where Estado.idEstado between " + li + " and " + ls + " and  Material.idMaterial=" + idMaterial + " "
                + "order by Material.idMaterial asc";
    }

    public static String contarPreguntas() {
        return "select count(idPregunta) as preguntas from Pregunta where idEstado between 1 and 4";
    }

    public static String contarPreguntasAceptadas() {
        return "select count(idPregunta) as preguntas from Pregunta where idEstado=1";
    }

    public static String contarPreguntasRechazadas() {
        return "select count(idPregunta) as preguntas from Pregunta where idEstado=2";
    }

    public static String contarPreguntasPendientes() {
        return "select count(idPregunta) as preguntas from Pregunta where idEstado=3";
    }

    public static String contarMaterialesPendientes() {
        return "select count(idMaterial) as materiales from Material where idEstado=3";
    }

    public static String contarMaterialesAceptados() {
        return "select count(idMaterial) as materiales from Material where idEstado=1";
    }

    public static String contarMaterialesRechazados() {
        return "select count(idMaterial) as materiales from Material where idEstado=2";
    }

    public static String contarMateriales() {
        return "select count(idMaterial) as materiales from Material where idEstado between 1 and 4";
    }

    public static String contarCuestionarios() {
        return "select count(distinct(Identificador)) as cuestionarios from Cuestionario where idEstado=1";
    }

    public static String getIdPreguntas() {
        return "select idPregunta from Pregunta";
    }

    public static String getIdPreguntasAceptadas() {
        return "select idPregunta from Pregunta where idEstado=1";
    }

    public static String contarCuestionariosContestadosUsuario(String usr) {
        return "select count(distinct(Cuestionario.Identificador)) as cuestionarios from Respondido "
                + "join (Cuestionario, Usuario) "
                + "on (Respondido.idCuestionario=Cuestionario.idCuestionario and Usuario.idUsuario=Respondido.idUsuario) "
                + "where Usuario.Usuario='" + usr + "' and Cuestionario.idEstado='1'";
    }

    public static String contarPreguntasPorTema(String idTema) {
        return "select count(idPregunta) as preguntas from Pregunta where idTema='" + idTema + "' and idEstado between 1 and 4";
    }

    public static String contarMaterialesPorTema(String idTema) {
        return "select count(idMaterial) as materiales from Material where idTema='" + idTema + "' and idEstado between 1 and 4";
    }

    public static String getDatosCuestionarios(String clave, String nombre) {
        return "select Identificador, Nombre, Fecha, idPregunta, idCuestionario from Cuestionario "
                + "where idEstado=1 and Identificador like '%" + clave + "%' and Nombre like '%" + nombre + "%' "
                + "group by (Identificador) order by Fecha desc";
    }

    public static String getDatosCuestionarios(String clave, int idPregunta) {
        return "select Identificador, Nombre, Fecha, idPregunta, idCuestionario from Cuestionario "
                + "where idEstado=1 and Identificador='" + clave + "' and idPregunta=" + idPregunta + " "
                + "order by Fecha asc";
    }

    public static String eliminarCuestionario(String id) {
        return "update Cuestionario set idEstado=5 where Identificador='" + id + "'";
    }

    public static String getTodasPreguntas() {
        return "select Pregunta.idPregunta, Pregunta.Pregunta, Tema.idTema, Tema.Tema, Estado.idEstado, Estado.Estado, "
                + "Pregunta.Respuesta0, Pregunta.Respuesta1, Pregunta.Respuesta2, Pregunta.Respuesta3, "
                + "Pregunta.Recurso0, Pregunta.Recurso1, Pregunta.Recurso2, Pregunta.Recurso3, Pregunta.Correcta "
                + "from Pregunta "
                + "join (Tema, Estado) "
                + "on (Tema.idTema=Pregunta.idTema and Pregunta.idEstado=Estado.idEstado) "
                + "order by Pregunta.idPregunta asc";
    }

    public static String getTodasPreguntasAceptadas() {
        return "select Pregunta.idPregunta, Pregunta.Pregunta, Tema.idTema, Tema.Tema, Estado.idEstado, Estado.Estado, "
                + "Pregunta.Respuesta0, Pregunta.Respuesta1, Pregunta.Respuesta2, Pregunta.Respuesta3, "
                + "Pregunta.Recurso0, Pregunta.Recurso1, Pregunta.Recurso2, Pregunta.Recurso3, Pregunta.Correcta "
                + "from Pregunta "
                + "join (Tema, Estado) "
                + "on (Tema.idTema=Pregunta.idTema and Pregunta.idEstado=Estado.idEstado) "
                + "where Pregunta.idEstado=1"
                + "order by Pregunta.idPregunta asc";
    }

    public static String getTodosMatriales() {
        return "select Material.idMaterial, Material.Nombre, Material.Descripcion, Material.idEstado, Estado.Estado, "
                + "Material.idTema, Tema.Tema, Material.idTipo, Tipo.Tipo, Material.Recurso "
                + "from Material "
                + "join (Estado, Tema, Tipo) on (Material.idEstado=Estado.idEstado and Material.idTema=Tema.idTema and Material.idTipo=Tipo.idTipo) "
                + "order by Material.idMaterial asc";
    }

    public static String getCuestionarioResponder(String clave) {
        return "select Cuestionario.idCuestionario, Cuestionario.Identificador, Cuestionario.Nombre, Cuestionario.Fecha, "
                + "Pregunta.idPregunta, Pregunta.Pregunta, Pregunta.idTema, "
                + "Pregunta.Respuesta0, Pregunta.Respuesta1, Pregunta.Respuesta2, Pregunta.Respuesta3, "
                + "Pregunta.Recurso0, Pregunta.Recurso1, Pregunta.Recurso2, Pregunta.Recurso3, "
                + "Pregunta.Correcta "
                + "from Cuestionario "
                + "join (Pregunta) "
                + "on (Cuestionario.idPregunta=Pregunta.idPregunta) "
                + "where Cuestionario.idEstado=1 and Cuestionario.Identificador='" + clave + "' "
                + "order by (Cuestionario.idCuestionario) asc";
    }

    public static String existeUnaClave(String clave) {
        return "select count(distinct(Identificador)) as existe from Cuestionario where idEstado=1 and Identificador='" + clave + "'";
    }

    public static String existeUnaClaveRespondido(String clave) {
        return "select count(distinct(Identificador)) as existe from Respondido where Identificador='" + clave + "'";
    }

    public static String insertarRespuestasUsuario(String clave, String idUsuario, String idCuestionario,
            String respuesta, String claveRespuesta, int bien, int mal) {
        return "insert into Respondido (RespuestaUsuario, idCuestionario, idUsuario, Fecha, Identificador, Bien, Mal) "
                + "values ('" + respuesta + "','" + idCuestionario + "' ,'" + idUsuario + "' , "
                + "CURRENT_TIMESTAMP(), '" + claveRespuesta + "', " + bien + ", " + mal + ")";
    }

    public static String getInfoCuestionarioRespondido(String usuario) {
        return "select Cuestionario.Nombre, Cuestionario.Identificador, "
                + "Respondido.Identificador, Respondido.Fecha, Usuario.idUsuario "
                + "from Respondido "
                + "join (Cuestionario, Usuario) "
                + "on (Respondido.idCuestionario=Cuestionario.idCuestionario and Respondido.idUsuario=Usuario.idUsuario) "
                + "where Cuestionario.idEstado=1 and Usuario.Usuario='" + usuario + "' "
                + "group by (Respondido.Identificador) "
                + "order by (Respondido.Fecha) desc";
    }

    public static String getCuestionarioRespondidoUsuario(String usuario, String id) {
        return "select Cuestionario.Nombre, Cuestionario.Identificador, "
                + "Respondido.Identificador, Respondido.Fecha, Usuario.idUsuario, "
                + "Respondido.RespuestaUsuario, Respondido.Bien, Respondido.Mal, "
                + "Pregunta.Pregunta, Pregunta.idPregunta, Pregunta.idTema, "
                + "Pregunta.Respuesta0, Pregunta.Respuesta1, Pregunta.Respuesta2, Pregunta.Respuesta3, "
                + "Pregunta.Recurso0, Pregunta.Recurso1, Pregunta.Recurso2, Pregunta.Recurso3, Pregunta.Correcta "
                + "from Respondido "
                + "join (Cuestionario, Usuario, Pregunta) "
                + "on (Respondido.idCuestionario=Cuestionario.idCuestionario "
                + "and Respondido.idUsuario=Usuario.idUsuario "
                + "and Cuestionario.idPregunta=Pregunta.idPregunta) "
                + "where Cuestionario.idEstado=1 and Usuario.Usuario='" + usuario + "' and Respondido.Identificador='" + id + "' "
                + "order by (Cuestionario.idCuestionario) asc";
    }

    public static String insertarNuevoCuestionario(String clave, String nombre, int idPregunta) {
        return "insert into Cuestionario (Identificador, Nombre, Fecha, idPregunta, idEstado) values "
                + "('" + clave + "', '" + nombre + "', CURRENT_TIMESTAMP(), " + idPregunta + ", 1)";
    }

    public static String insertarNuevoUsuario(String correo, String usuario, String password, String edad, String tipo) {
        return "insert into Usuario (Correo, Usuario, Password, Edad, Tipo, idEstado) values "
                + "('" + correo + "', '" + usuario + "', '" + password + "', " + edad + ", " + tipo + ", 1)";
    }
    
    public static String insertarNuevoUsuario(String correo, String usuario, String password, String edad) {
        return "insert into Usuario (Correo, Usuario, Password, Edad, Tipo, idEstado) values "
                + "('" + correo + "', '" + usuario + "', '" + password + "', " + edad + ", 2, 1)";
    }
     */
}
