// Auto-generated
let project = new Project('UPH_Postholder');

project.addSources('Sources');
project.addLibrary("C:/ArmorySDK/armory");
project.addLibrary("C:/ArmorySDK/iron");
project.addLibrary("mynodes");
project.addLibrary("C:/ArmorySDK/lib/haxebullet");
project.addAssets("C:/ArmorySDK/lib/haxebullet/ammo/ammo.wasm.js", { notinlist: true });
project.addAssets("C:/ArmorySDK/lib/haxebullet/ammo/ammo.wasm.wasm", { notinlist: true });
project.addParameter('arm.Spawner_UPH');
project.addParameter("--macro keep('arm.Spawner_UPH')");
project.addParameter('arm.Beam_Control_v6');
project.addParameter("--macro keep('arm.Beam_Control_v6')");
project.addParameter('arm.LDM56_Base');
project.addParameter("--macro keep('arm.LDM56_Base')");
project.addParameter('arm.UPH_Base');
project.addParameter("--macro keep('arm.UPH_Base')");
project.addParameter('armory.trait.internal.Bridge');
project.addParameter("--macro keep('armory.trait.internal.Bridge')");
project.addParameter('armory.trait.physics.bullet.RigidBody');
project.addParameter("--macro keep('armory.trait.physics.bullet.RigidBody')");
project.addParameter('arm.PumpLaser');
project.addParameter("--macro keep('arm.PumpLaser')");
project.addParameter('armory.trait.internal.DebugConsole');
project.addParameter("--macro keep('armory.trait.internal.DebugConsole')");
project.addParameter('armory.trait.physics.bullet.PhysicsWorld');
project.addParameter("--macro keep('armory.trait.physics.bullet.PhysicsWorld')");
project.addParameter('arm.Color_trait');
project.addParameter("--macro keep('arm.Color_trait')");
project.addParameter('arm.ResumeTraitSelector');
project.addParameter("--macro keep('arm.ResumeTraitSelector')");
project.addParameter('arm.NewUI');
project.addParameter("--macro keep('arm.NewUI')");
project.addParameter('arm.node.Genral_Object_properties_blocking');
project.addParameter("--macro keep('arm.node.Genral_Object_properties_blocking')");
project.addParameter('arm.node.Kamera_Bewegung');
project.addParameter("--macro keep('arm.node.Kamera_Bewegung')");
project.addShaders("build_UPH_Postholder/compiled/Shaders/*.glsl", { noembed: false});
project.addShaders("build_UPH_Postholder/compiled/Hlsl/*.glsl", { noprocessing: true, noembed: false });
project.addAssets("build_UPH_Postholder/compiled/Assets/**", { notinlist: true });
project.addAssets("build_UPH_Postholder/compiled/Shaders/*.arm", { notinlist: true });
project.addAssets("../../MiReQu_data/Texturen/General/Platte_Occlusion_Diffusion.png", { notinlist: true });
project.addAssets("../../MiReQu_data/Texturen/General/Schraube_Occlusion_Diffusion.png", { notinlist: true });
project.addAssets("../../MiReQu_data/Texturen/LDM_56_Laser/BA2_Occlusion_Diffusion.png", { notinlist: true });
project.addAssets("../../MiReQu_data/Texturen/LDM_56_Laser/LDM_56_Diffusion_Occlusion_collage.png", { notinlist: true });
project.addAssets("../../MiReQu_data/Texturen/Post_and_holder/PH15_Diffusion_Occlusion.png", { notinlist: true });
project.addAssets("../../MiReQu_data/Texturen/Post_and_holder/TR2_Diffusion_Occlusion.png", { notinlist: true });
project.addAssets("../../MiReQu_data/Texturen/Post_and_holder/UPH2_Base_Occlusion_Diffusion.png", { notinlist: true });
project.addAssets("C:/ArmorySDK/armory/Assets/brdf.png", { notinlist: true });
project.addAssets("C:/ArmorySDK/armory/Assets/smaa_area.png", { notinlist: true });
project.addAssets("C:/ArmorySDK/armory/Assets/smaa_search.png", { notinlist: true });
project.addShaders("C:/ArmorySDK/armory/Shaders/debug_draw/**");
project.addLibrary("C:/ArmorySDK/lib/zui");
project.addAssets("C:/ArmorySDK/armory/Assets/font_default.ttf", { notinlist: false });
project.addDefine('arm_deferred');
project.addDefine('rp_hdr');
project.addDefine('rp_renderer=Deferred');
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
project.addDefine('arm_debug');
project.addDefine('arm_ui');
project.addDefine('arm_skin');
project.addDefine('arm_particles');


resolve(project);
