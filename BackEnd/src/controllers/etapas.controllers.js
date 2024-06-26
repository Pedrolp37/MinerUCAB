import {pool} from '../databases/BD_Connection.js';


export const eliminarEtapa = async (req, res)=>{
    try{
        const {id} = req.params;

        await pool.query('CALL eliminar_etapa($1)',[id]);

        return res.status(200).json({ message: 'Etapa eliminada correctamente' });
    }catch(error){
       // Verifica si el error es específico del procedimiento almacenado
       if (error.code === 'P0001') {
        // Captura el mensaje de error y envía una respuesta personalizada
        const errorMessage = error.message; // Puedes ajustar esto según el formato que desees
        return res.status(404).json({ error: errorMessage });
    } else {
        // Otra excepción no relacionada con el procedimiento almacenado
        return res.status(500).json({ error: 'Error al eliminar el mineral' });
    }
    }
}