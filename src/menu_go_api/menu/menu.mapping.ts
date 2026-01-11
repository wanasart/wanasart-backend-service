import * as Model from "./menu.model"
import { splitDateTime } from "../timeDate.mapping"

export const mapMenuToSaveResponse = (row: any): Model.Menu => {

    const createdAt = splitDateTime(row.mnu_created_at);
    const updatedAt = splitDateTime(row.mnu_updated_at);

    return {
        id: row.mnu_id,
        name: row.mnu_name,
        url: row.mnu_image_url,
        price: row.mnu_price,
        created_at: `${createdAt.date} ${createdAt.time}`,
        updated_at: `${updatedAt.date} ${updatedAt.time}`,
        category: {
            id: row.categories.cat_id,
            name: row.categories.cat_name,
        }
    }
};