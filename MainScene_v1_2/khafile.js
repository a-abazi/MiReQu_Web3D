// Auto-generated
let project = new Project('MainScene');

project.addSources('Sources');
project.addLibrary("C:/ArmorySDK/armory");
project.addLibrary("C:/ArmorySDK/iron");
project.addLibrary("C:/ArmorySDK/lib/haxebullet");
project.addAssets("C:/ArmorySDK/lib/haxebullet/ammo/ammo.js", { notinlist: true });
project.addParameter('--no-inline');
project.addParameter('arm.KM100_Base');
project.addParameter("--macro keep('arm.KM100_Base')");
project.addParameter('arm.Spawner_KM100CP');
project.addParameter("--macro keep('arm.Spawner_KM100CP')");
project.addParameter('arm.Spawner_KM100');
project.addParameter("--macro keep('arm.Spawner_KM100')");
project.addParameter('armory.trait.physics.bullet.RigidBody');
project.addParameter("--macro keep('armory.trait.physics.bullet.RigidBody')");
project.addParameter('arm.Mirror_v4');
project.addParameter("--macro keep('arm.Mirror_v4')");
project.addParameter('arm.node.Genral_Object_properties_blocking_007');
project.addParameter("--macro keep('arm.node.Genral_Object_properties_blocking_007')");
project.addParameter('arm.LDM56_Base');
project.addParameter("--macro keep('arm.LDM56_Base')");
project.addParameter('arm.RSP1D_Base');
project.addParameter("--macro keep('arm.RSP1D_Base')");
project.addParameter('arm.node.Genral_Object_properties_blocking_004');
project.addParameter("--macro keep('arm.node.Genral_Object_properties_blocking_004')");
project.addParameter('arm.NewUI');
project.addParameter("--macro keep('arm.NewUI')");
project.addParameter('arm.ResumeTraitSelector');
project.addParameter("--macro keep('arm.ResumeTraitSelector')");
project.addParameter('arm.Spawner_KS1RS');
project.addParameter("--macro keep('arm.Spawner_KS1RS')");
project.addParameter('arm.node.Genral_Object_properties_blocking_006');
project.addParameter("--macro keep('arm.node.Genral_Object_properties_blocking_006')");
project.addParameter('arm.node.Kamera_Bewegung');
project.addParameter("--macro keep('arm.node.Kamera_Bewegung')");
project.addParameter('arm.Spawner_KM100PM');
project.addParameter("--macro keep('arm.Spawner_KM100PM')");
project.addParameter('arm.Plotter');
project.addParameter("--macro keep('arm.Plotter')");
project.addParameter('arm.node.Genral_Object_properties_blocking_005');
project.addParameter("--macro keep('arm.node.Genral_Object_properties_blocking_005')");
project.addParameter('arm.node.Genral_Object_properties_blocking_001');
project.addParameter("--macro keep('arm.node.Genral_Object_properties_blocking_001')");
project.addParameter('arm.KM100CP_Base');
project.addParameter("--macro keep('arm.KM100CP_Base')");
project.addParameter('armory.trait.physics.bullet.PhysicsWorld');
project.addParameter("--macro keep('armory.trait.physics.bullet.PhysicsWorld')");
project.addParameter('arm.BeamSplitter_v1');
project.addParameter("--macro keep('arm.BeamSplitter_v1')");
project.addParameter('arm.BBO_v1');
project.addParameter("--macro keep('arm.BBO_v1')");
project.addParameter('arm.node.Genral_Object_properties_blocking_003');
project.addParameter("--macro keep('arm.node.Genral_Object_properties_blocking_003')");
project.addParameter('arm.PumpLaser');
project.addParameter("--macro keep('arm.PumpLaser')");
project.addParameter('arm.Color_trait');
project.addParameter("--macro keep('arm.Color_trait')");
project.addParameter('arm.node.Genral_Object_properties_blocking_002');
project.addParameter("--macro keep('arm.node.Genral_Object_properties_blocking_002')");
project.addParameter('arm.Spawner_RSP1D');
project.addParameter("--macro keep('arm.Spawner_RSP1D')");
project.addParameter('arm.UPH2_Base');
project.addParameter("--macro keep('arm.UPH2_Base')");
project.addParameter('arm.Waveplate_half_v2');
project.addParameter("--macro keep('arm.Waveplate_half_v2')");
project.addParameter('armory.trait.internal.DebugConsole');
project.addParameter("--macro keep('armory.trait.internal.DebugConsole')");
project.addParameter('arm.node.Genral_Object_properties_blocking');
project.addParameter("--macro keep('arm.node.Genral_Object_properties_blocking')");
project.addParameter('arm.KM100PM_Base');
project.addParameter("--macro keep('arm.KM100PM_Base')");
project.addParameter('armory.trait.internal.Bridge');
project.addParameter("--macro keep('armory.trait.internal.Bridge')");
project.addParameter('arm.Beam_Control_v6');
project.addParameter("--macro keep('arm.Beam_Control_v6')");
project.addParameter('arm.Spawner_BTC30');
project.addParameter("--macro keep('arm.Spawner_BTC30')");
project.addParameter('arm.KS1RS_Base');
project.addParameter("--macro keep('arm.KS1RS_Base')");
project.addShaders("build_MainScene/compiled/Shaders/*.glsl", { noembed: false});
project.addAssets("build_MainScene/compiled/Assets/**", { notinlist: true });
project.addAssets("build_MainScene/compiled/Shaders/*.arm", { notinlist: true });
project.addAssets("../MiReQu_data/Texturen/BTC30_Beamblocker/BTC30_Diffusion_Occlusion.png", { notinlist: true });
project.addAssets("../MiReQu_data/Texturen/CP08_Mount_Koppler/CP08_Occlusion_Diffusion.png", { notinlist: true });
project.addAssets("../MiReQu_data/Texturen/General/Platte_Occlusion_Diffusion.png", { notinlist: true });
project.addAssets("../MiReQu_data/Texturen/General/Schraube_Occlusion_Diffusion.png", { notinlist: true });
project.addAssets("../MiReQu_data/Texturen/KM100_Mirrorholder/Base_KM100_Diffusion_Occlusion.png", { notinlist: true });
project.addAssets("../MiReQu_data/Texturen/KM100_Mirrorholder/Front_KM100_vorne_Diffusion_Occlusion.png", { notinlist: true });
project.addAssets("../MiReQu_data/Texturen/KM100_Mirrorholder/Schraube_F25SSK_Occlusion_Diffusion.png", { notinlist: true });
project.addAssets("../MiReQu_data/Texturen/KS1RS/F25SSK_Occlusion_Diffusion.png", { notinlist: true });
project.addAssets("../MiReQu_data/Texturen/KS1RS/KS1RS_Diffusion_Occlusion.png", { notinlist: true });
project.addAssets("../MiReQu_data/Texturen/KS1RS/KS1RS_Lens_Diffusion_Occlusion.png", { notinlist: true });
project.addAssets("../MiReQu_data/Texturen/LDM_56_Laser/BA2_Occlusion_Diffusion.png", { notinlist: true });
project.addAssets("../MiReQu_data/Texturen/LDM_56_Laser/LDM_56_Diffusion_Occlusion_collage.png", { notinlist: true });
project.addAssets("../MiReQu_data/Texturen/PAFX15_Faserkoppler/PAFX15_Diffusion_Occlusion.png", { notinlist: true });
project.addAssets("../MiReQu_data/Texturen/PBS_KM100/PBS_Base_Occlusion_Diffusion.png", { notinlist: true });
project.addAssets("../MiReQu_data/Texturen/PBS_KM100/PBS_KM100_Diffusion_Occlusion.png", { notinlist: true });
project.addAssets("../MiReQu_data/Texturen/PBS_KM100/PBS_KM100_PM_vorne_Diffusion_Occlusion.png", { notinlist: true });
project.addAssets("../MiReQu_data/Texturen/Post_and_holder/PH15_Diffusion_Occlusion.png", { notinlist: true });
project.addAssets("../MiReQu_data/Texturen/Post_and_holder/TR2_Diffusion_Occlusion.png", { notinlist: true });
project.addAssets("../MiReQu_data/Texturen/Post_and_holder/UPH2_Base_Occlusion_Diffusion.png", { notinlist: true });
project.addAssets("../MiReQu_data/Texturen/RSP1D_Rotationmount/RSP1D_Diffusion_Occlusion.png", { notinlist: true });
project.addAssets("C:/ArmorySDK/armory/Assets/brdf.png", { notinlist: true });
project.addAssets("C:/ArmorySDK/armory/Assets/smaa_area.png", { notinlist: true });
project.addAssets("C:/ArmorySDK/armory/Assets/smaa_search.png", { notinlist: true });
project.addShaders("C:/ArmorySDK/armory/Shaders/debug_draw/**");
project.addLibrary("C:/ArmorySDK/lib/zui");
project.addAssets("C:/ArmorySDK/armory/Assets/font_default.ttf", { notinlist: false });
project.addDefine('arm_deferred');
project.addDefine('arm_csm');
project.addDefine('arm_spot');
project.addDefine('arm_clusters');
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
project.addDefine('arm_soundcompress');
project.addDefine('arm_debug');
project.addDefine('arm_ui');
project.addDefine('arm_skin');
project.addDefine('arm_particles');
project.addDefine('arm_resizable');


resolve(project);