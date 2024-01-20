# login to http://127.0.0.1:7000
curl -X POST -H "Content-Type: application/json" \
-d '{"email": "superadmin@gmail.com", "password": "YYY2023@dmin"}' \
  http://127.0.0.1:7000/api/v1/admin/auth/login | jq
{
  "isSuccess": true,
  "message": "Login successfully.",
  "data": {
    "id": 1,
    "name": "Super Admin",
    "email": "superadmin@gmail.com",
    "phone": "09123456789",
    "token": "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MSwiaWF0IjoxNzA1NzUwOTc2LCJleHAiOjE3MDU3NTQ1NzZ9.skZlxzPU-otBfqXgThDSTXZztj-gfMnGta7589iVruc",
    "roles": [
      {
        "id": 1,
        "name": "SuperAdmin"
      }
    ],
    "permissions": [
      "create-brand",
      "create-category",
      "create-categorysubgroup",
      "create-menu-management",
      "create-permission-management",
      "create-role",
      "create-subcategory",
      "create-tag",
      "create-user",
      "delete-brand",
      "delete-category",
      "delete-categorysubgroup",
      "delete-menu-management",
      "delete-permission-management",
      "delete-role",
      "delete-subcategory",
      "delete-tag",
      "delete-user",
      "update-brand",
      "update-category",
      "update-categorysubgroup",
      "update-menu-management",
      "update-permission-management",
      "update-role",
      "update-subcategory",
      "update-tag",
      "update-user",
      "view-brand",
      "view-category",
      "view-categorysubgroup",
      "view-menu-management",
      "view-permission-management",
      "view-role",
      "view-subcategory",
      "view-tag",
      "view-user"
    ],
    "routes": [
      {
        "id": 1,
        "label": "Dashboard",
        "key": "dashboard",
        "icon": "fa-solid fa-house",
        "parent_id": null,
        "children": null,
        "path": "/dashboard"
      },
      {
        "id": 2,
        "label": "Menu Management",
        "key": "menu-management",
        "icon": "fa-solid fa-list",
        "parent_id": null,
        "children": null,
        "path": "/menu-management"
      },
      {
        "id": 3,
        "label": "Permission Management",
        "key": "permission-management",
        "icon": "fa-solid fa-lock",
        "parent_id": null,
        "children": null,
        "path": "/permission-management"
      },
      {
        "id": 4,
        "label": "Role and Permission",
        "key": "role-and-permission",
        "icon": "fa-solid fa-lock-open",
        "parent_id": null,
        "children": [
          {
            "id": 5,
            "label": "Registration",
            "key": "registration",
            "icon": null,
            "parent_id": 4,
            "children": null,
            "path": "/role-and-permission/registration"
          },
          {
            "id": 6,
            "label": "List",
            "key": "list",
            "icon": null,
            "parent_id": 4,
            "children": null,
            "path": "/role-and-permission/list"
          }
        ]
      },
      {
        "id": 7,
        "label": "Product Management",
        "key": "product-management",
        "icon": "fa-warehouse",
        "parent_id": null,
        "children": [
          {
            "id": 8,
            "label": "Category Registration",
            "key": "category-registration",
            "icon": null,
            "parent_id": 7,
            "children": null,
            "path": "/product-management/category-registration"
          },
          {
            "id": 9,
            "label": "Category List",
            "key": "category-list",
            "icon": null,
            "parent_id": 7,
            "children": null,
            "path": "/product-management/category-list"
          },
          {
            "id": 10,
            "label": "Sub Category Registration",
            "key": "sub-category-registration",
            "icon": null,
            "parent_id": 7,
            "children": null,
            "path": "/product-management/sub-category-registration"
          }
        ]
      },
      {
        "id": 11,
        "label": "Admin Managment",
        "key": "admin-management",
        "icon": "fa-id-card",
        "parent_id": null,
        "children": [
          {
            "id": 12,
            "label": "Admin Registration",
            "key": "admin-registration",
            "icon": null,
            "parent_id": 11,
            "children": null,
            "path": "/admin-management/admin-registration"
          },
          {
            "id": 13,
            "label": "Admin List",
            "key": "admin-list",
            "icon": null,
            "parent_id": 11,
            "children": null,
            "path": "/admin-management/admin-list"
          }
        ]
      },
      {
        "id": 14,
        "label": "Brand Management",
        "key": "brand-management",
        "icon": "fa-box-open",
        "parent_id": null,
        "children": null,
        "path": "/brand-management"
      }
    ]
  }
}

# get all brands
curl -X GET http://127.0.0.1:7000/api/v1/brands | jq
{
  "isSuccess": true,
  "message": "All Brands List",
  "data": []
}

# get all admin
curl -X GET -H "Authorization: Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MSwiaWF0IjoxNzA1NzYyMTkxLCJleHAiOjE3MDU3NjU3OTF9.6BLNa663IXvBZ78w2hMOn_ufDzcDd1ZE0PE5IkDDO5w" \
  http://127.0.0.1:7000/api/v1/admin/users | jq
{
  "isSuccess": true,
  "message": "Retrieved Admin Lists successfully.",
  "data": [
    {
      "id": 1,
      "name": "Super Admin",
      "email": "superadmin@gmail.com",
      "phone": "09123456789",
      "roles": [
        {
          "id": 1,
          "name": "SuperAdmin"
        }
      ]
    },
    {
      "id": 2,
      "name": "Developer",
      "email": "developer@gmail.com",
      "phone": "09987654321",
      "roles": [
        {
          "id": 2,
          "name": "Developer"
        },
        {
          "id": 3,
          "name": "Manager"
        }
      ]
    },
    {
      "id": 3,
      "name": "Manager",
      "email": "manager@gmail.com",
      "phone": "09876543219",
      "roles": [
        {
          "id": 3,
          "name": "Manager"
        }
      ]
    }
  ]
}

