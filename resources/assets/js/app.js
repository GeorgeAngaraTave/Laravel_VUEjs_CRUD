new Vue({
    el: '#crud',
    created: function() {
        this.getKeeps();
    },
    data: {
        keeps : [],
        pagination : {
            'total' : 0,
            'current_page' : 0,
            'per_page': 0,
            'last_page': 0,
            'from': 0,
            'to': 0
        },
        newkeep: '',
        fillkeep: {'id': '', 'keep': ''},
        errors: [],
        offset : 3
    },
    computed: {
        isActived: function () {
            return this.pagination.current_page;
        },
        pagesNumber: function () {
            if(!this.pagination.to){
                return [];
            }

            var from = this.pagination.current_page - this. offset;
            if(from < 1){
                from =1;
            }

            var to = from +(this. offset * 2);
            if(to >= this.pagination.last_page){
                to = this.pagination.last_page;
            }

            var pageArray = [];
            while(from <= to){
                pageArray.push(from);
                from++;
            }

            return pageArray;
        }
    },
    methods: {
        getKeeps: function(page) {
            var urlKeeps = 'tasks?page='+page;
            axios.get(urlKeeps).then(response => {
                this.keeps = response.data.tasks.data
                this.pagination = response.data.pagination
            });
        },
        editKeeps: function(keep){
          this.fillkeep.id = keep.id;
          this.fillkeep.keep = keep.keep;
          $('#edit').modal('show');
        },
        updateKeep: function(id){
            var urUpdate = 'tasks/' + id;
            axios.put(urUpdate, this.fillkeep).then(response => { // Elimina registro
                this.getKeeps(); //Lista
                this.fillkeep = {'id': '', 'keep': ''};
                this.errors = [];
                $('#edit').modal('hide');
                toastr.success('Actualizada correctamente la tarea '+ id); // mensaje
            }).catch(error => {
                this.errors = error.response.data
            });
        },
        deleteKeeps: function (keep) {
            var urlDelete = 'tasks/' + keep.id;
            axios.delete(urlDelete).then(response => { // Elimina registro
                this.getKeeps(); //Lista
                toastr.success('Eliminado Correctamente registro No '+ keep.id); // mensaje
            });
        },
        createkeep: function () {
            var urlcreate = 'tasks';
            axios.post(urlcreate, {
                keep: this.newkeep
            }).then(response =>{
                this.getKeeps();
                this.newkeep = '';
                this.errors = [];
                $('#create').modal('hide');
                toastr.success('Tarea creada con existo'); // mensaje
            }).catch(error => {
                this.errors = error.response.data
            })
        },
        changePage: function (page) {
            this.pagination.current_page = page;
            this.getKeeps(page);
        }
    }
});