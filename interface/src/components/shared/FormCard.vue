<template>
  <q-card flat bordered class="bg-grey-3">
    <q-form @submit="$parent.onSubmit()"
            @reset="$parent.onReset()">
      <q-card-section>
        <div class="row items-center no-wrap">
          <div class="col">
            <div class="text-h6 q-pb-none">{{title}}</div>
          </div>
          <div v-if="options" class="col-auto">
            <q-btn color="grey-7" round flat icon="more_vert">
              <q-menu fit anchor="bottom left" self="top left" auto-close>
                <div class="row no-wrap" v-for="button in options"
                  v-bind:key="button.label">
                  <q-btn flat
                    align="right" class='full-width'
                    v-bind:class='button.class'
                    v-bind:to='button.to'
                    v-on:click='button.click'
                    v-bind:icon-right="button.icon"
                    v-bind:label="button.label"
                    v-bind:type="button.type">
                  </q-btn>
                </div>
              </q-menu>
            </q-btn>
          </div>
        </div>
      </q-card-section>
      <q-card-section>
        <slot></slot>
      </q-card-section>
      <q-separator />
      <q-card-actions>
        <q-btn flat
          v-for="button in actions"
          v-bind:class='button.class'
          v-bind:key="button.label"
          v-bind:icon="button.icon"
          v-bind:label="button.label"
          v-bind:type="button.type">
        </q-btn>
      </q-card-actions>
    </q-form>
  </q-card>
</template>

<script>
export default {
  props: [
    'title',
    'actions',
    'options',
    'onSubmit',
    'onReset'
  ],
  data () {
    return {
    }
  },
  methods: {

  }
}
</script>
