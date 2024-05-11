<script setup>
import { ref } from 'vue';

async function getCountries() {
  let response = await fetch('https://www.restcountries.com/v3.1/all');
  let data = await response.json();
  let countries =  await console.log(data);
  
  return countries;

}
console.log(getCountries());
let countries=getCountries()
</script>

<template>
  <h1>is okay</h1>
  <h1>{{ countries }}</h1>
</template>

<style scoped>
h1 {
  font-weight: 500;
  font-size: 2.6rem;
  position: relative;
  top: -10px;
}

h3 {
  font-size: 1.2rem;
}

.greetings h1,
.greetings h3 {
  text-align: center;
}

@media (min-width: 1024px) {
  .greetings h1,
  .greetings h3 {
    text-align: left;
  }
}
</style>
