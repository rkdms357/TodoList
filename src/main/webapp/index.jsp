<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>오늘 할일들</title>
    <link rel="stylesheet" href="todo-list.css">
</head>
<body>
<div class="container">
    <h1>오늘 할일들</h1>
    <form>
        <input type="text" id="todo" name="text" placeholder="오늘 할일을 입력해주세요." autofocus>
        <input type="submit" id="btn" name="button" value="+">
        <div id="board">
        </div>
    </form>
</div>
<script>
    const inputField = document.querySelector("#todo");
    const addBtn = document.querySelector("#btn");
    const divBoard = document.querySelector("#board");
    addBtn.addEventListener("click", f_add);

    function f_add(e){
        e.preventDefault()
        const todoText = inputField.value.trim();
        if (todoText === "") {
            alert("할일을 입력해주세요.");
            return;
        }
        f_addItem(todoText);
        inputField.value = "";
    }

    function f_addItem(todoText){
        const pItem = document.createElement("p");
        pItem.textContent = todoText;
        pItem.addEventListener("click", f_delete);
        divBoard.appendChild(pItem);
    }

    function f_delete(e){
        const deleteItem = e.currentTarget;
        if (deleteItem.classList.contains("deleting")) {
            divBoard.removeChild(deleteItem);
        } else {
            deleteItem.classList.add("deleting");
        }
    }
</script>
</body>
</html>

