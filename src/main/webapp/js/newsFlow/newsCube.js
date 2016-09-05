	
	function Luna5thNewsCude(){
		
		this.geometry;
		
		this.material = [];
		
		this.mesh;
	}
	
	Luna5thNewsCude.prototype = {
			
		create : function(width, height, depth){
			this.geometry = new THREE.BoxGeometry( width, height, depth );
		},
		
		setFace : function(){
			for ( var i = 0, l = this.geometry.faces.length; i < l; i ++ ) {
				var face = this.geometry.faces[ i ];
				face.vertexColors[ 0 ] = new THREE.Color().setHSL( Math.random() * 0.3 + 0.5, 0.75, Math.random() * 0.25 + 0.75 );
				face.vertexColors[ 1 ] = new THREE.Color().setHSL( Math.random() * 0.3 + 0.5, 0.75, Math.random() * 0.25 + 0.75 );
				face.vertexColors[ 2 ] = new THREE.Color().setHSL( Math.random() * 0.3 + 0.5, 0.75, Math.random() * 0.25 + 0.75 );
			}	
		},
		
		setMeterial : function(){
			for (var i = 0; i < 6; ++i) {
			    this.material.push(new THREE.MeshBasicMaterial({
			        map: THREE.ImageUtils.loadTexture(ctx+'/img/sina-1.jpg',
			                {}, function() {
			                    renderer.render(scene, camera);
			                }),
			        overdraw: true
			    }));
			}
			
			this.mesh = new THREE.Mesh( this.geometry, new THREE.MeshFaceMaterial(this.material) );
		},
		
		setPosition : function(x, y, z){	
			this.mesh.position.x = x;
			this.mesh.position.y = y;
			this.mesh.position.z = z;
		},
		
		setY : function(y){	
			this.mesh.position.y = y;
		},
		
		getY : function(){	
			return this.mesh.position.y;
		},
			
		getMesh : function(){
			return this.mesh;
		}
		
	}
	
	
