<!-- script pour la partie dynamique (js) -->
<script setup>
import { ref, computed } from 'vue' //pour que le framework fonctionne

let newTodo = ref('')
let todos = ref(JSON.parse(localStorage.getItem('todos')) || [])
let filter = ref('all')

//ajouter une tache
let addTodo = () => {
  if (newTodo.value) {
    todos.value.push({ text: newTodo.value, done: false })
    newTodo.value = ''
    localStorage.setItem('todos', JSON.stringify(todos.value))
  }
}

//supprimer une tache
let removeTodo = (todo) => {
  todos.value = todos.value.filter(t => t !== todo)
  localStorage.setItem('todos', JSON.stringify(todos.value))
}

//changer l'etat d'une tache (completee <-> non completee)
let toggleTodo = (todo) => {
  todo.done = !todo.done
  localStorage.setItem('todos', JSON.stringify(todos.value))
}

//filtrer les taches
let filteredTodos = computed(() => {
  if (filter.value === 'all') return todos.value
  return todos.value.filter(todo => filter.value === 'done' ? todo.done : !todo.done)
})
</script>

<!-- disposition des elements (html) -->

<template>
  <h1>Liste de taches</h1>
  <div id="controls" @submit.prevent="addTodo">
    <form>
      <!-- input lie a la variable newTodo, appuyer sur entrer pour ajouter tache -->
      <input v-model="newTodo" @keyup.enter="addTodo" required placeholder="nouvelle tache"> 
      <button>Ajouter tache</button>
    </form>
    <select v-model="filter">
      <option value="all">Tout afficher</option>
      <option value="done">Afficher completees</option>
      <option value="notdone">Afficher non completees</option>
    </select>
  </div>
  
  <div id="list">
    <ul>
      <!-- v-for permet de repeter le template pour chaque entree dans liste -->
      <li v-for="(todo, index) in filteredTodos" :key="index" :class="{ done: todo.done }">
        <span >{{ todo.text }}
        </span>
        <button @click="toggleTodo(todo)" class="toggle"><img src="../assets/check.svg" alt=""></button>
        <button @click="removeTodo(todo)" class="delete"><img src="../assets/trash.svg" alt=""></button>
      </li>
    </ul>
  </div>
</template>

<!-- style des elements du composant (css) -->
<style>

h1 {
  color: white;
  text-align: center;
}

#controls {
  display: flex;
  justify-content: space-between;
  align-items: center;
}

form {
  background-color: #1f1f1f;
  margin-right: 1em;
  color: white;
  border-radius: 10px;
}

input{
  height: 100%;
  margin: 0;
  background: none;
  border: none;
  color: white;
}

select {
  background-color: #1f1f1f;
  color: white;
  border: none;
  border-radius: 10px;
}

#list {
  margin-top: 1em;
  height: 75vh;
  overflow-y: auto;
  scrollbar-color: #4f4f4f #1f1f1f ;
}

ul {
  list-style-type: none;
  padding: 0;
}

li {
  height: 2.3em;
  display: flex;
  justify-content: space-between;
  align-items: center;
  min-width: 100%;
  background-color: #1f1f1f;
  color: white;
  margin-top: 10px;
  border-radius: 10px;
}

li span {
  flex-grow: 1;
  display: flex;
  align-items: center;
  padding-left: 1em;
}

li button {
  display: flex; 
  align-items: center; 
  justify-content: center; 
  margin: 0;
}

button {
  border: none;
  background: #2b7bf4;
  border-radius: 0 10px 10px 0;
  height: 100%;
  color: white;
}

button:hover {
  cursor: pointer;
  filter: brightness(0.8);
}

.delete {
  background-color: #fc121d;
  border-radius: 0 10px 10px 0;
}

.toggle {
  border-radius: 0;
  background-color: #49cb2b;
}
.done {
  text-decoration: line-through;
  filter: invert(0.2);
}
</style>