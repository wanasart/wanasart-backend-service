import * as Model from "./category.model"
import { splitDateTime } from "../timeDate.mapping"

export const mapCategoryToSaveResponse = (row: any): Model.Category => {

    const createdAt = splitDateTime(row.cat_created_at);
    const updatedAt = splitDateTime(row.cat_updated_at);

    return {
        id: row.cat_id,
        name: row.cat_name,
        description: row.cat_description,
        created_at: `${createdAt.date} ${createdAt.time}`,
        updated_at: `${updatedAt.date} ${updatedAt.time}`,
    }
};