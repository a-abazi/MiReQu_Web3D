// Auto-generated
let project = new Project('KM100CP_Koppler');

project.addSources('Sources');
project.addLibrary("C:/blender/ArmorySDK/armory");
project.addLibrary("C:/blender/ArmorySDK/iron");
project.addLibrary("C:/blender/ArmorySDK/lib/haxebullet");
project.addAssets("C:/blender/ArmorySDK/lib/haxebullet/ammo/ammo.wasm.js", { notinlist: true });
project.addAssets("C:/blender/ArmorySDK/lib/haxebullet/ammo/ammo.wasm.wasm", { notinlist: true });
project.addParameter('arm.KM100CP_Base');
project.addParameter("--macro keep('arm.KM100CP_Base')");
project.addParameter('arm.node.Kamera_Bewegung');
project.addParameter("--macro keep('arm.node.Kamera_Bewegung')");
project.addParameter('armory.trait.physics.bullet.PhysicsWorld');
project.addParameter("--macro keep('armory.trait.physics.bullet.PhysicsWorld')");
project.addParameter('armory.trait.physics.bullet.RigidBody');
project.addParameter("--macro keep('armory.trait.physics.bullet.RigidBody')");
project.addParameter('arm.Spawner_UPH2');
project.addParameter("--macro keep('arm.Spawner_UPH2')");
project.addParameter('arm.UPH2_Base');
project.addParameter("--macro keep('arm.UPH2_Base')");
project.addParameter('arm.Spawner_KM100CP');
project.addParameter("--macro keep('arm.Spawner_KM100CP')");
project.addShaders("build_KM100CP_Koppler/compiled/Shaders/*.glsl", { noembed: false});
project.addShaders("build_KM100CP_Koppler/compiled/Hlsl/*.glsl", { noprocessing: true, noembed: false });
project.addAssets("build_KM100CP_Koppler/compiled/Assets/**", { notinlist: true });
project.addAssets("build_KM100CP_Koppler/compiled/Shaders/*.arm", { notinlist: true });
project.addAssets("../../MiReQu_data/Texturen/CP08_Mount_Koppler/CP08_Occlusion_Diffusion.png", { notinlist: true });
project.addAssets("../../MiReQu_data/Texturen/General/Platte_Occlusion_Diffusion.png", { notinlist: true });
project.addAssets("../../MiReQu_data/Texturen/General/Schraube_Occlusion_Diffusion.png", { notinlist: true });
project.addAssets("../../MiReQu_data/Texturen/KM100_Mirrorholder/Base_KM100_Diffusion_Occlusion.png", { notinlist: true });
project.addAssets("../../MiReQu_data/Texturen/KM100_Mirrorholder/Schraube_F25SSK_Occlusion_Diffusion.png", { notinlist: true });
project.addAssets("../../MiReQu_data/Texturen/PAFX15_Faserkoppler/PAFX15_Diffusion_Occlusion.png", { notinlist: true });
project.addAssets("../../MiReQu_data/Texturen/PBS_KM100/PBS_KM100_Diffusion_Occlusion.png", { notinlist: true });
project.addAssets("../../MiReQu_data/Texturen/PBS_KM100/PBS_KM100_PM_vorne_Diffusion_Occlusion.png", { notinlist: true });
project.addAssets("../../MiReQu_data/Texturen/Post_and_holder/PH15_Diffusion_Occlusion.png", { notinlist: true });
project.addAssets("../../MiReQu_data/Texturen/Post_and_holder/TR2_Diffusion_Occlusion.png", { notinlist: true });
project.addAssets("../../MiReQu_data/Texturen/Post_and_holder/UPH2_Base_Occlusion_Diffusion.png", { notinlist: true });
project.addAssets("C:/blender/ArmorySDK/armory/Assets/brdf.png", { notinlist: true });
project.addAssets("C:/blender/ArmorySDK/armory/Assets/smaa_area.png", { notinlist: true });
project.addAssets("C:/blender/ArmorySDK/armory/Assets/smaa_search.png", { notinlist: true });
project.addDefine('arm_deferred');
project.addDefine('arm_csm');
project.addDefine('rp_hdr');
project.addDefine('rp_renderer=Deferred');
project.addDefine('rp_shadowmap');
project.addDefine('rp_shadowmap_cascade=1024');
project.addDefine('rp_shadowmap_cube=512');
project.addDefine('rp_background=World');
project.addDefine('rp_render_to_texture');
project.addDefine('rp_compositornodes');
project.addDefine('rp_antialiasing=SMAA');
project.addDefine('rp_supersampling=1');
project.addDefine('rp_ssgi=SSAO');
project.addDefine('arm_audio');
project.addDefine('arm_physics');
project.addDefine('arm_bullet');
project.addDefine('arm_noembed');
project.addDefine('arm_soundcompress');
project.addDefine('arm_skin');
project.addDefine('arm_particles');


resolve(project);