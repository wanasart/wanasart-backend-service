import { Request, Response, NextFunction } from "express";
import * as CategoryService from './category.service'

export async function getCategory(req: Request, res: Response, next: NextFunction){
    try {
        const categories = await CategoryService.getCategory();
        return res.status(200).json({
            message: 'Fetched successfully',
            data: categories,
        })
    } catch(err){
        next(err);
    }
}