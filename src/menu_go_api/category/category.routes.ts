import { Router } from "express";
import * as ctrl from "./category.controller";

const router = Router();

router.get('/', ctrl.getCategory);

export default router; 