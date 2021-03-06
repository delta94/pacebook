export const fetchUser = userId => (
    $.ajax({
        url: `/api/users/${userId}`,
        method: "GET"
    })
);

export const fetchUsers = postIds => (
    $.ajax({
        url: `/api/users`,
        method: "GET",
        data: { postIds }
    })
);

export const fetchSearchUsers = data => (
    $.ajax({
        url: "/api/users",
        method: "GET",
        data: { data }
    })
);

export const createUser = user => (
    $.ajax({
        url: `/api/users`,
        method: "POST",
        data: { user }
    })
);

export const updateUser = (userId, formData) => (
    $.ajax({
        url: `/api/users/${userId}`,
        method: "PATCH",
        data: formData,
        contentType: false,
        processData: false
    })
);