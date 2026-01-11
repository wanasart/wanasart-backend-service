import { supabase } from "../../config/db";
import * as Model from "./menu.model";
import { mapMenuToSaveResponse } from "./menu.mapping";

export async function getMenuItem(): Promise<Model.Menu[]> {
    const { data, error } = await supabase
        .from('menus')
        .select('mnu_id, mnu_name, mnu_image_url, mnu_price, mnu_created_at, mnu_updated_at, categories(cat_id, cat_name)')
        .eq('mnu_is_active', true);

    if (error) throw error;
    
    return data.map(mapMenuToSaveResponse);
}