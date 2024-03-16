const { createApp, ref } = Vue;

createApp({
  // Créer un objet (stocker une data dans Vue)
  data() {
    return {
      inputType: '',
      authors: [],
      searchKey: "",
      // Récupérer les pays de la db et enlever les doublons
      countryList: [],
      countryOption: [],
      countrySelected: "",
      styleAuthorRadio: [],
      styleOption: [],
      // La grappe qui est sélectionnée
      styleSelected: "",
    };
  },
  // Surveille les changements en temps réel
  computed: {
    search() {
      return this.authors.filter((author) => {
        return (
          author.name.toLowerCase().includes(this.searchKey.toLowerCase()) &&
          author.country.toLowerCase().includes(this.countrySelected.toLowerCase()) &&
          author.styles.toLowerCase().includes(this.styleSelected.toLowerCase())
        );
      });
    },
  },
  methods: {
    removeItem(id) {
      this.authors.splice(id, 1);
    },
    getImgUrl(pic) {
      return "assets/uploads/" + pic;
    },
    searchInput(param) {
      this.inputType = param;
    },
    cancelSearch() {
      this.searchKey = "";
      this.countrySelected = "";
      this.styleSelected = "";
    },
  },
  mounted() {
    axios.get("libraries/controllers/getData.php")
      .then((res) => res.data)
      .then((res) => {
        this.authors = res;
        // On passe en revue tous les éléments
        for (let i = 0; i < this.authors.length; i++) {
          // Si la liste des pays ne contient pas déjà le pays, on ajoute le pays dans le tableau des pays.
          if (!this.countryList.includes(this.authors[i].country)) {
            this.countryList.push(this.authors[i].country);
          }

          if (!this.styleAuthorRadio.includes(this.authors[i].styles)) {
            this.styleAuthorRadio.push(this.authors[i].styles);
          }
        }
      })
      .then(() => {
        setTimeout(() => {
          // Classer les pays par ordre alphabétique
          let arr = this.countryList.sort();
          // Classer les styles 
          let styles = this.styleAuthorRadio.sort();

          // Le transformer en un objet avec un id et un nom pour le liste avec Vue.
          for (let i = 0; i < arr.length; i++) {
            // Tableau qui va contenir des objets (liste du select des options). 
            this.countryOption.push({
              name: arr[i],
              id: arr[i],
            });
          }

          for (let i = 0; i < styles.length; i++) {
            // Tableau qui va contenir des objets (liste du select des options). 
            this.styleOption.push({
              name: styles[i],
              id: styles[i],
            });
          }
        }, 500);
      });
  }
}).mount('#vue-app');
