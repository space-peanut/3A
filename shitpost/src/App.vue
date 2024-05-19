<script setup lang="ts">
import HelloWorld from './components/HelloWorld.vue'
</script>

<template>
  <div>
    <a href="https://vitejs.dev" target="_blank">
      <img src="https://cdn.discordapp.com/attachments/1149690168119406713/1240443191409512518/image.png?ex=6646943f&is=664542bf&hm=6dead510c34a83f0b6727643807e66339a1191ca457341d8299beb94f5b2ddf9&" class="logo" alt="Vite logo" />
    </a>
    X
    <a href="https://vuejs.org/" target="_blank">
      <img src="./assets/vue.svg" class="logo vue" alt="Vue logo" />
    </a>
  </div>
  <HelloWorld msg="NoVueJS" />
</template>

<style scoped>
.logo {
  height: 6em;
  padding: 1.5em;
  will-change: filter;
  transition: filter 300ms;
}
.logo:hover {
  filter: drop-shadow(0 0 2em #646cffaa);
}
.logo.vue:hover {
  filter: drop-shadow(0 0 2em #42b883aa);
}
</style>
