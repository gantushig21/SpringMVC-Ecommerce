package org.ecommerce.utils;

import java.util.HashMap;
import java.util.Map;

public class FactoryMethods {
    private static Map<String, String> categories = new HashMap<>();
    static {
        categories.put("clothes", "Clothes");
        categories.put("computer", "Computer");
        categories.put("phone", "Phone");
    }

    public static Map<String, String> getCategories() {
        return categories;
    }
}
