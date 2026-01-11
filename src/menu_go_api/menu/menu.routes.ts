import { Router } from "express";
import * as ctrl from "./menu.controller";

const router = Router();

router.get('/', ctrl.getMenuItem);

export default router; 