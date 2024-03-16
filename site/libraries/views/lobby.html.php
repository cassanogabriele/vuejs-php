<div id="vue-app" class="lobby-container">
  <div @click="cancelSearch" v-if="searchKey || countrySelected || styleSelected" class="cancel">
    <h5>Annuler recherche</h5>
    &nbsp; <i class="fas fa-times mt-2"></i>
  </div>
  
  <ul>
    <li v-on:click="searchInput('name')" class="name">
      <i class="fas fa-search"></i>
      <input v-if="inputType == 'name'" v-model="searchKey" type="search" class="search " placeholder="Entrez le nom d'un auteur">
    </li>

    <li v-on:click="searchInput('country')" class="country text-ligth">
      <i class="fas fa-globe-europe"></i>

      <select v-show="inputType == 'country'" v-model="countrySelected" class="text-light">
        <option value="">Choisissez un pays</option>
        <option v-for="option in countryOption" :value="option.id">{{ option.name }}</option>
      </select>
    </li>

    <li v-on:click="searchInput('styles')" class="authors text-ligth">
	  <i class="fa fa-film" aria-hidden="true"></i>
	  <div class="radio-container" v-if="inputType === 'styles'">
		<div v-for="style in styleOption" :key="style.id" class="radio">
		  <label :for="style.id" class="text-light"> {{ style.name }}</label>
		  <input v-model="styleSelected" :id="style.id" :value="style.id" type="radio" class="radio-button">
		</div>
	  </div>
	</li>
  </ul>

  <h1 v-if="inputType == ''" class="title text-light">Liste des auteurs de films</h1>

  <h3 v-if="search.length == 0" class="text-light">Aucun résultat</h3>

  <transition-group name="item-anim" tag="div" class="list-container">
    <div v-for="author, id in search" class="author-list" :key="author.id">
      <div class="author-card">
        <div class="card-header">
          <h2>Nom : {{ author.name }}</h2>
          <i @click="removeItem(id)" class="fas fa-times"></i>
        </div>

        <div class="container">
          <div class="text-container">
            <div class="button text-dark">
              <h4>Année de naissance : {{ author.birthdate }}</h4>
              <h4>Région : {{ author.country }}</h4>
              <h4>Style : {{ author.grapes }}</h4>
            </div>

            <div class="location">
              <i class="fas fa-map-marker-alt"></i>
              <span>Origine : {{author.region}}</span>
            </div>

            <p>{{author.description}}</p>
          </div>
          <img :src="getImgUrl(author.picture)" alt="photo-bouteille">
        </div>
      </div>
    </div>
  </transition-group>
</div>
