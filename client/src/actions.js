module.exports = {
  changeTitle,
};

function changeTitle(newTitle) {
  return { type: 'CHANGE_TITLE', data: newTitle };
}
