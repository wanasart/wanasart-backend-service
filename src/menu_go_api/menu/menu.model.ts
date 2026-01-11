export interface Menu {
    id: number;
    name: string;
    url: string;
    price: number;
    created_at: string;
    updated_at: string;
    category: {
        id: number;
        name: string;
    }
}

