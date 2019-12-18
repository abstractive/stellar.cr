<template>
  <div>
    <q-page class="stellar-landing full-height full-width fluid justify-center text-center column q-pa-lg"
      :style="{ background: `url('${background}')` }">
        <div class="text-center q-mb-md">
          <slot></slot>
          <q-btn size=lg push clickable no-caps
            class='text-left q-px-lg'
            icon-right="fas fa-caret-down"
            color='grey-9'
            @click='scrollToElement(target)'
            label='Read More'>
          </q-btn>
        </div>
    </q-page>
  </div>
</template>
<script>

export default {
  props: [ 'background', 'target' ],
  methods: {
  }
}
</script>

<style scoped>
.stellar-landing {
  z-index: 0;
  background-size: cover;
  width: 100%;
  height: 100%;
  max-height: 100vh;
}
</style>
