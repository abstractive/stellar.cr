<template>
  <div id="q-app">
    <transition
      name="fade"
      appear
      enter-active-class="animated fadeIn"
      leave-active-class="animated fadeOut"
      :duration="300">
      <router-view />
    </transition>
  </div>
</template>
<script>
export default {
  name: 'App'
}
</script>
<style>
</style>
