import {pool} from '../databases/BD_Connection.js';


export const postSolicitudCliente = async(req,res) =>{
    try{   
        const {} = req.body;
            await pool.query('')
            await pool.query('')
    }catch(error){
        return res.status(500).json(error);
    }
}