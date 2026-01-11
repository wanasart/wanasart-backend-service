import { Router } from "express";
import menus from "./menu/menu.routes";
import categories from "./category/category.routes";

const router = Router();

router.use("/menus", menus);
router.use("/categories", categories);

export default router;