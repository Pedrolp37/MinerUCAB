import {pool} from '../databases/BD_Connection.js';

export const getMinerals = async (req, res) => {
    try{
    const {rows} = await pool.query('select * from mineral');
    res.status(200).json(rows);
    }catch(error){
        res.json(error);
    }
};