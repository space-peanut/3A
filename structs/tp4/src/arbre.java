public class arbre {
	private int valeur;
	private arbre filsGauche, filsDroit;

	arbre(int v, arbre ag, arbre ad) {
		this.valeur = v;
		this.filsGauche = ag;
		this.filsDroit = ad;
	}

	int getValeur() {
		return this.valeur;
	}

	arbre getFilsGauche() {
		return this.filsGauche;
	}

	arbre getFilsDroit() {
		return this.filsDroit;
	}

	void setValeur(int v) {
		this.valeur = v;
	}

	void setFilsGauche(arbre ag) {
		this.filsGauche = ag;
	}

	void setFilsDroit(arbre ad) {
		this.filsDroit = ad;
	}

	private int profondeur, abscisse, largeur, espace;
	private String dsp;

	private void param() {
		int i;
		espace = 0;
		dsp = Integer.toString(valeur); // forme d'affichage de la valeur du noeud

		if (this.filsGauche != null) {
			this.filsGauche.param();
		}
		if (this.filsDroit != null) {
			this.filsDroit.param();
		}
		if (this.filsGauche == null) {
			if (this.filsDroit == null) {
				profondeur = 1;
				largeur = dsp.length(); // pas de fils: il n'y a que dsp a afficher
				abscisse = largeur / 2;
			} else {
				profondeur = this.filsDroit.profondeur + 1;
				if (this.filsDroit.abscisse < (dsp.length() + 1)) {
					espace = dsp.length() + 1 - this.filsDroit.abscisse;
					largeur = this.filsDroit.largeur + espace;
					abscisse = dsp.length() / 2;
				} else {
					largeur = this.filsDroit.largeur;
					abscisse = this.filsDroit.abscisse - 1 - dsp.length() + dsp.length() / 2;
				}
			}
		} else {
			if (this.filsDroit == null) {
				profondeur = this.filsGauche.profondeur + 1;
				if (this.filsGauche.largeur < (this.filsGauche.abscisse + 2 + dsp.length())) {
					largeur = this.filsGauche.abscisse + 2 + dsp.length();
				} else {
					largeur = this.filsGauche.largeur;
				}
				abscisse = this.filsGauche.abscisse + 2 + dsp.length() / 2;
			} else {
				if (this.filsGauche.profondeur < this.filsDroit.profondeur) {
					profondeur = this.filsDroit.profondeur + 1;
				} else {
					profondeur = this.filsGauche.profondeur + 1;
				}
				espace++; // on ajoute un espace entre g et d
				i = (this.filsDroit.abscisse + espace + this.filsGauche.largeur) - this.filsGauche.abscisse - 3
						- dsp.length();
				if (i < 0) {
					espace -= i; // on ajoute des espace pour pouvoir afficher dsp
				}
				largeur = this.filsGauche.largeur + this.filsDroit.largeur + espace;
				abscisse = (this.filsDroit.abscisse + espace + this.filsGauche.largeur + this.filsGauche.abscisse) / 2;
			}
		}
	}

	// prepare l'affichage de l'arbre a dans le tableau 'aff'
	// (le tableau 'aff' represente l'ecran d'affichage ligne par ligne)
	// il faut afficher l'arbre a partir de la ligne 'lig'
	// et de la colonne 'col'
	protected void dansAff(int lig, int col, String[] aff) {
		int i;
		if (this.filsGauche != null) {
			this.filsGauche.dansAff(lig + 2, col, aff);
			if (this.filsDroit != null) {
				this.filsDroit.dansAff(lig + 2, col + this.filsGauche.largeur + espace, aff);
			}
		} else if (this.filsDroit != null) {
			this.filsDroit.dansAff(lig + 2, col + espace, aff);
		}
		for (i = (col - aff[lig].length()); i >= 0; i--) {
			aff[lig] = aff[lig] + " ";
		}
		if ((this.filsGauche != null) || (this.filsDroit != null)) {
			for (i = (col - aff[lig + 1].length()); i >= 0; i--) {
				aff[lig + 1] = aff[lig + 1] + " ";
			}
		}
		if (this.filsGauche == null) {
			if (this.filsDroit == null) {
				aff[lig] = aff[lig] + dsp;
			} else {
				for (i = (espace + this.filsDroit.abscisse - 2 - dsp.length()); i >= 0; i--) {
					aff[lig] = aff[lig] + " ";
				}
				aff[lig] = aff[lig] + dsp + "_.";
				for (i = (espace + this.filsDroit.abscisse - 1); i >= 0; i--) {
					aff[lig + 1] = aff[lig + 1] + " ";
				}
				aff[lig + 1] = aff[lig + 1] + "|";
			}
		} else {
			for (i = this.filsGauche.abscisse; i > 0; i--) {
				aff[lig] = aff[lig] + " ";
			}
			aff[lig] = aff[lig] + ".";
			for (i = this.filsGauche.abscisse; i > 0; i--) {
				aff[lig + 1] = aff[lig + 1] + " ";
			}
			aff[lig + 1] = aff[lig + 1] + "|";
			if (this.filsDroit == null) {
				aff[lig] = aff[lig] + "_" + dsp;
			} else {
				for (i = (this.filsGauche.largeur - this.filsGauche.abscisse - 1 + espace + this.filsDroit.abscisse
						- dsp.length()) / 2; i > 0; i--) {
					aff[lig] = aff[lig] + "_";
				}
				aff[lig] = aff[lig] + dsp;
				for (i = col + this.filsGauche.largeur + espace + this.filsDroit.abscisse
						- aff[lig].length(); i >= 0; i--) {
					aff[lig] = aff[lig] + "_";
				}
				aff[lig] = aff[lig] + ".";
				for (i = col + this.filsGauche.largeur + espace + this.filsDroit.abscisse
						- aff[lig + 1].length(); i >= 0; i--) {
					aff[lig + 1] = aff[lig + 1] + " ";
				}
				aff[lig + 1] = aff[lig + 1] + "|";
			}
		}
	}

	public String toString() {
		String ret;
		this.param();
		String[] aff = new String[2 * profondeur - 1];
		int i;
		for (i = 0; i < (2 * profondeur - 1); i++) {
			aff[i] = "";
		}
		dansAff(0, 0, aff);
		ret = "";
		for (i = 0; i < (2 * profondeur - 1); i++) {
			ret = ret + aff[i] + "\n";
		}
		return ret;
	}

}
