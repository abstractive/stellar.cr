<template>
  <q-card flat bordered class="bg-grey-3">
      <q-card-section>
        <div class="row items-center no-wrap">
          <div class="col">
            <div class="text-h6 q-pb-none">{{title}}</div>
          </div>
          <div v-if="options" class="col-auto">
            <q-btn color="grey-7" round flat icon="more_vert">
              <q-menu  fit anchor="bottom left" self="top left" auto-close>
                <q-list>
                  <q-item clickable
                    v-for="item in options"
                    v-bind:class='item.class'
                    v-bind:key="item.label"
                    v-bind:icon="item.icon"
                    v-bind:label="item.label">
                    <q-item-section>
                      {{item.label}}
                    </q-item-section>
                    <q-item-section avatar>
                      <q-icon :name='item.icon' />
                    </q-item-section>
                  </q-item>
                </q-list>
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
          v-bind:label="button.label">
        </q-btn>
      </q-card-actions>
    </q-card>
</template>

<script>
export default {
  props: [
    'title',
    'actions',
    'options'
  ],
  data () {
    return {
    }
  },
  methods: {

  }
}
</script>
