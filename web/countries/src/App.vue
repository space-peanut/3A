<script setup>
import countries from './components/Countries.vue'
</script>

<template>
  <header>
    <div class="wrapper">
      <countries/>
    </div>
  </header>

  <main>
    <TheWelcome />
  </main>
</template>

<style scoped>
header {
  line-height: 1.5;
}

.logo {
  display: block;
  margin: 0 auto 2rem;
}

</style>
