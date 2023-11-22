:- initialization(run_on_load, main).

run_on_load :-
    write('hello'), nl.
disease(bean_rust,fungus).
disease(black_root_rot,bacterial).
disease(white_mould,fungus).
disease(bacterial_blight,bacterial).
disease(mosaic,fungus).
disease(anthracnose,fungus).

symptoms(small_yellow_spots,bean_rust).
symptoms(red_rust_pustules,bean_rust).
symptoms(yellow_hallow,bean_rust).
symptoms(small_white_spots,bean_rust).

symptoms(red_purplelesions,black_root_rot).
symptoms(largedark_roots,black_root_rot).
symptoms(deep_lesions,black_root_rot).

symptoms(cottony_fungal_growth,white_mould).
symptoms(water_soakedlesions,white_mould).
symptoms(slimy_branch,white_mould).

symptoms(yellowing_of_leaves, bacterial_blight).
symptoms(brown_spots_on_leaves, bacterial_blight).
symptoms(wilting_of_leaves, bacterial_blight).
symptoms(water_soaked_lesions, bacterial_blight).

symptoms(mottled_leaves, mosaic).
symptoms(stunted_growth, mosaic).
symptoms(twisted_leaves, mosaic).
symptoms(discoloration_of_leaves, mosaic).

symptoms(dark_brown_spots_on_leaves, anthracnose).
symptoms(leaf_curling, anthracnose).
symptoms(defoliation, anthracnose).
symptoms(reduced_yield, anthracnose).
has_symptom(bean_rust, small_yellow_spots).
has_symptom(bean_rust, red_rust_pustules).
has_symptom(bean_rust, yellow_hallow).
has_symptom(bean_rust, small_white_spots).

has_symptom(black_root_rot, red_purple_lesions).
has_symptom(black_root_rot, large_dark_roots).
has_symptom(black_root_rot, deep_lesions).

has_symptom(white_mould, cottony_fungal_growth).
has_symptom(white_mould, water_soaked_lesions).
has_symptom(white_mould, slimy_branch).

has_symptom(bacterial_blight, yellowing_of_leaves).
has_symptom(bacterial_blight, brown_spots_on_leaves).
has_symptom(bacterial_blight, wilting_of_leaves).
has_symptom(bacterial_blight, water_soaked_lesions).

has_symptom(mosaic, mottled_leaves).
has_symptom(mosaic, stunted_growth).
has_symptom(mosaic, twisted_leaves).
has_symptom(mosaic, discoloration_of_leaves).

has_symptom(anthracnose, dark_brown_spots_on_leaves).
has_symptom(anthracnose, leaf_curling).
has_symptom(anthracnose, defoliation).
has_symptom(anthracnose, reduced_yield).

has_effect(bacterial_blight, reduced_yield).
has_effect(bacterial_blight, discoloration_of_pod).
has_effect(bacterial_blight, pod_rot).
has_effect(bacterial_blight, defoliation).

has_effect(mosaic, stunted_growth).
has_effect(mosaic, deformed_pods).
has_effect(mosaic, reduced_bean_size).
has_effect(mosaic, reduced_yield).

has_effect(anthracnose, dark_spots_on_pods).
has_effect(anthracnose, reduced_quality).
has_effect(anthracnose, pod_rot).
has_effect(anthracnose, defoliation).

has_effect(bean_rust, rusty_spots_on_leaves).
has_effect(bean_rust, reduced_bean_size).
has_effect(bean_rust, premature_leaf_drop).
has_effect(bean_rust, reduced_yield).

has_effect(black_root_rot, wilting_plants).
has_effect(black_root_rot, brown_rotten_roots).
has_effect(black_root_rot, stunted_growth).
has_effect(black_root_rot, reduced_yield).

has_effect(white_mould, fuzzy_white_growth).
has_effect(white_mould, reduced_quality).
has_effect(white_mould, brown_discoloration).
has_effect(white_mould, reduced_yield).


is_effect(reduced_yield, bacterial_blight).
is_effect(discoloration_of_pod, bacterial_blight).
is_effect(pod_rot, bacterial_blight).
is_effect(defoliation, bacterial_blight).

is_effect(stunted_growth, mosaic).
is_effect(deformed_pods, mosaic).
is_effect(reduced_bean_size, mosaic).
is_effect(reduced_yield, mosaic).

is_effect(dark_spots_on_pods, anthracnose).
is_effect(reduced_quality, anthracnose).
is_effect(pod_rot, anthracnose).
is_effect(defoliation, anthracnose).

is_effect(rusty_spots_on_leaves, bean_rust).
is_effect(reduced_bean_size, bean_rust).
is_effect(premature_leaf_drop, bean_rust).
is_effect(reduced_yield, bean_rust).

is_effect(wilting_plants, black_root_rot).
is_effect(brown_rotten_roots, black_root_rot).
is_effect(stunted_growth, black_root_rot).
is_effect(reduced_yield, black_root_rot).

is_effect(fuzzy_white_growth, white_mould).
is_effect(reduced_quality, white_mould).
is_effect(brown_discoloration, white_mould).
is_effect(reduced_yield, white_mould).


is_sysmptom(X,Y):-symptoms(X,Y).
effect_of(X,Y):-is_effect(X,Y).
