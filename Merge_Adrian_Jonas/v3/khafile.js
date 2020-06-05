// Auto-generated
let project = new Project('merge_v3');

project.addSources('Sources');
project.addLibrary("C:/blender/ArmorySDK/armory");
project.addLibrary("C:/blender/ArmorySDK/iron");
project.addLibrary("mynodes");
project.addLibrary("C:/blender/ArmorySDK/lib/haxebullet");
project.addAssets("C:/blender/ArmorySDK/lib/haxebullet/ammo/ammo.wasm.js", { notinlist: true });
project.addAssets("C:/blender/ArmorySDK/lib/haxebullet/ammo/ammo.wasm.wasm", { notinlist: true });
project.addParameter('arm.node.KM100');
project.addParameter("--macro keep('arm.node.KM100')");
project.addParameter('arm.node.Spawn_Beams_Control_v3');
project.addParameter("--macro keep('arm.node.Spawn_Beams_Control_v3')");
project.addParameter('arm.NewUI');
project.addParameter("--macro keep('arm.NewUI')");
project.addParameter('arm.Mirror_v4_wrong_coordinate_system');
project.addParameter("--macro keep('arm.Mirror_v4_wrong_coordinate_system')");
project.addParameter('armory.trait.physics.bullet.RigidBody');
project.addParameter("--macro keep('armory.trait.physics.bullet.RigidBody')");
project.addParameter('arm.PumpLaserProps');
project.addParameter("--macro keep('arm.PumpLaserProps')");
project.addParameter('arm.node.LDM56');
project.addParameter("--macro keep('arm.node.LDM56')");
project.addParameter('arm.node.PT1B');
project.addParameter("--macro keep('arm.node.PT1B')");
project.addParameter('armory.trait.physics.bullet.PhysicsWorld');
project.addParameter("--macro keep('armory.trait.physics.bullet.PhysicsWorld')");
project.addParameter('arm.node.UPH');
project.addParameter("--macro keep('arm.node.UPH')");
project.addParameter('arm.node.Kamera_Bewegung');
project.addParameter("--macro keep('arm.node.Kamera_Bewegung')");
project.addShaders("build_merge_v3/compiled/Shaders/*.glsl", { noembed: false});
project.addShaders("build_merge_v3/compiled/Hlsl/*.glsl", { noprocessing: true, noembed: false });
project.addAssets("build_merge_v3/compiled/Assets/**", { notinlist: true });
project.addAssets("build_merge_v3/compiled/Shaders/*.arm", { notinlist: true });
project.addAssets("../../MiReQu_data/Texturen/General/Platte_Occlusion_Diffusion.png", { notinlist: true });
project.addAssets("../../MiReQu_data/Texturen/General/Schraube_Occlusion_Diffusion.png", { notinlist: true });
project.addAssets("../../MiReQu_data/Texturen/KM100_Mirrorholder/Base_KM100_Diffusion_Occlusion.png", { notinlist: true });
project.addAssets("../../MiReQu_data/Texturen/KM100_Mirrorholder/Front_KM100_vorne_Diffusion_Occlusion.png", { notinlist: true });
project.addAssets("../../MiReQu_data/Texturen/KM100_Mirrorholder/Schraube_F25SSK_Occlusion_Diffusion.png", { notinlist: true });
project.addAssets("../../MiReQu_data/Texturen/LDM_56_Laser/BA2_Occlusion_Diffusion.png", { notinlist: true });
project.addAssets("../../MiReQu_data/Texturen/LDM_56_Laser/LDM_56_Diffusion_Occlusion_collage.png", { notinlist: true });
project.addAssets("../../MiReQu_data/Texturen/PT1B_Stage/PT1B_Base_Diffusion_Occlusion.png", { notinlist: true });
project.addAssets("../../MiReQu_data/Texturen/PT1B_Stage/PT1B_Occlusion_Diffusion.png", { notinlist: true });
project.addAssets("../../MiReQu_data/Texturen/Post_and_holder/PH15_Diffusion_Occlusion.png", { notinlist: true });
project.addAssets("../../MiReQu_data/Texturen/Post_and_holder/TR2_Diffusion_Occlusion.png", { notinlist: true });
project.addAssets("../../MiReQu_data/Texturen/Post_and_holder/UPH2_Base_Occlusion_Diffusion.png", { notinlist: true });
project.addAssets("Bundled/canvas/Canvas_InGame.files", { notinlist: true });
project.addAssets("Bundled/canvas/Canvas_InGame.json", { notinlist: true });
project.addAssets("Bundled/canvas/MyCanvas.files", { notinlist: true });
project.addAssets("Bundled/canvas/MyCanvas.json", { notinlist: true });
project.addAssets("Bundled/canvas/_themes.json", { notinlist: true });
project.addAssets("C:/blender/ArmorySDK/armory/Assets/brdf.png", { notinlist: true });
project.addAssets("C:/blender/ArmorySDK/armory/Assets/smaa_area.png", { notinlist: true });
project.addAssets("C:/blender/ArmorySDK/armory/Assets/smaa_search.png", { notinlist: true });
project.addLibrary("C:/blender/ArmorySDK/lib/zui");
project.addAssets("C:/blender/ArmorySDK/armory/Assets/font_default.ttf", { notinlist: false });
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
project.addDefine('arm_ui');
project.addDefine('arm_skin');
project.addDefine('arm_particles');
project.addDefine('arm_resizable');


resolve(project);