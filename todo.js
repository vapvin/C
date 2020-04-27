// <⚠️ DONT DELETE THIS ⚠️>
import "./styles.css";
// <⚠️ /DONT DELETE THIS ⚠️>

const todoForm = document.querySelector(".todo-form");
const listInput = todoForm.querySelector("input");
const itemList = document.querySelector(".todo-list");
const completeBoard = document.querySelector(".complete-list");

const PENDINGS = "pending";
const FINISHED = "finished";

let pendingToDos = [];
let completeToDos = [];

function toPending(event) {
  const pendingBtn = event.target;
  pendingBtn.innerHTML = "&radic;";
  const thisLi = pendingBtn.parentNode;
  itemList.appendChild(thisLi);
  const pendToDos = completeToDos.filter(item => {
    return item.id === parseInt(thisLi.id);
  });
  const afterToDos = completeToDos.filter(toDo => {
    return toDo.id !== parseInt(thisLi.id);
  });
  completeToDos = afterToDos;
  pendingToDos = pendingToDos.concat(pendToDos);
  saveComplete();
  saveLocal();
}

function deleteItem(event) {
  const currentBtn = event.target;
  const li = currentBtn.parentNode;
  const ul = li.parentNode;
  console.log(ul);
  if (ul.classList.contains("todo-list")) {
    itemList.removeChild(li);
  } else {
    completeBoard.removeChild(li);
  }
  const cleanToDos = pendingToDos.filter(item => {
    return item.id !== parseInt(li.id);
  });
  const completeToDoList = completeToDos.filter(item => {
    return item.id !== parseInt(li.id);
  });
  pendingToDos = cleanToDos;
  completeToDos = completeToDoList;
  saveLocal();
  saveComplete();
}

function saveLocal() {
  localStorage.setItem(PENDINGS, JSON.stringify(pendingToDos));
}

function saveComplete() {
  localStorage.setItem(FINISHED, JSON.stringify(completeToDos));
}

function completeListing(event) {
  const currentCompleteBtn = event.target;
  currentCompleteBtn.innerHTML = "Pending";

  const currentLi = currentCompleteBtn.parentNode;
  completeBoard.appendChild(currentLi);
  const comToDos = pendingToDos.filter(item => {
    return item.id === parseInt(currentLi.id);
  });
  const afterToDos = pendingToDos.filter(toDo => {
    return toDo.id !== parseInt(currentLi.id);
  });
  completeToDos = comToDos;
  pendingToDos = afterToDos;
  saveComplete();
  saveLocal();
  if (currentCompleteBtn.innerHTML === "Pending") {
    currentCompleteBtn.addEventListener("click", toPending);
  }
}

function showingText(text) {
  const list = document.createElement("li");
  const deleteBtn = document.createElement("button");
  deleteBtn.addEventListener("click", deleteItem);
  const completeBtn = document.createElement("button");
  completeBtn.addEventListener("click", completeListing);
  const newId = pendingToDos.length + 1;
  deleteBtn.innerHTML = "X";
  completeBtn.innerHTML = "&radic;";
  const span = document.createElement("span");
  span.innerText = text;
  list.appendChild(span);
  list.appendChild(deleteBtn);
  list.appendChild(completeBtn);
  list.id = newId;
  // console.log(list);
  itemList.appendChild(list);
  // console.log(itemList);
  const toDoObj = {
    text,
    id: newId
  };
  pendingToDos.push(toDoObj);
  // console.log(pendingToDos);
  saveLocal();
}

function addToDo(event) {
  event.preventDefault();
  const currentValue = listInput.value;
  showingText(currentValue);
  listInput.value = "";
}

function loadItem() {
  const getToDos = localStorage.getItem(PENDINGS);
  // const completeToDos = localStorage.getItem(FINISHED);
  if (getToDos !== null) {
    const parseList = JSON.parse(getToDos);
    parseList.forEach(toDo => {
      // console.log(toDo.text);
      showingText(toDo.text);
    });
  }
  // if (completeToDos !== null) {
  //   const parseCompleteList = JSON.parse(completeToDos);
  // }
}

function init() {
  loadItem();
  todoForm.addEventListener("submit", addToDo);
}

init();
