import { Request, Response, NextFunction } from "express";
import * as MenuService from './menu.service'

export async function getMenuItem(req: Request, res: Response, next: NextFunction){
    try {
        const menus = await MenuService.getMenuItem();
        return res.status(200).json({
            message: 'Fetched successfully',
            data: menus,
        })
    } catch(err){
        next(err);
    }
}