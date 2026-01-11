import { Router } from "express";
import menu from "./menu/menu.routes";

const router = Router();

router.use("/menus", menu);

export default router;