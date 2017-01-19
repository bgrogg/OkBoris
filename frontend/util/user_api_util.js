export const fetchUsers = (distance) => {
  return $.ajax({
      method: 'GET',
      url: 'api/users',
      data: { distance }
  });
};

// export const fetchUser = id => {
//   return $.ajax({
//     method: 'GET',
//     url: `api/users/${id}`
//   });
// };
