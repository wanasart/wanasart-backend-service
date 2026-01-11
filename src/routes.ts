import { Router } from "express";
import menu from "./menu_go_api/menu/menu.routes";

const router = Router();

router.use("/menus", menu);

export default router;