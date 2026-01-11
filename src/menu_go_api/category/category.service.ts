import { supabase } from "../../config/db";
import * as Model from "./category.model";
import { mapCategoryToSaveResponse } from "./category.mapping";

export async function getCategory(): Promise<Model.Category[]> {
    const { data, error } = await supabase
        .from('categories')
        .select('cat_id, cat_name, cat_description, cat_created_at, cat_updated_at')
        .eq('cat_is_active', true);

    if (error) throw error;
    
    return data.map(mapCategoryToSaveResponse);
}