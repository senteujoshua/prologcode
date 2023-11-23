disease(bean_rust,fungus).
disease(black_root_rot,bacterial).
disease(white_mould,fungus).
disease(bacterial_blight,bacterial).
disease(mosaic,fungus).
disease(anthracnose,fungus).


symptoms(bean_rust, small_yellow_spots).
symptoms(bean_rust, red_rust_pustules).
symptoms(bean_rust, yellow_hallow).
symptoms(bean_rust, small_white_spots).

symptoms(black_root_rot, red_purplelesions).
symptoms(black_root_rot, largedark_roots).
symptoms(black_root_rot, deep_lesions).

symptoms(white_mould, cottony_fungal_growth).
symptoms(white_mould, water_soakedlesions).
symptoms(white_mould, slimy_branch).

symptoms(bacterial_blight, yellowing_of_leaves).
symptoms(bacterial_blight, brown_spots_on_leaves).
symptoms(bacterial_blight, wilting_of_leaves).
symptoms(bacterial_blight, water_soaked_lesions).

symptoms(mosaic, mottled_leaves).
symptoms(mosaic, stunted_growth).
symptoms(mosaic, twisted_leaves).
symptoms(mosaic, discoloration_of_leaves).

symptoms(anthracnose, dark_brown_spots_on_leaves).
symptoms(anthracnose, leaf_curling).
symptoms(anthracnose, defoliation).
symptoms(anthracnose, reduced_yield).

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


is_sysmptom(X,Y):-symptoms(X,Y). 

effect_of(X,Y):-is_effect(X,Y).

%identify_disease_and_effects(Symptom) :-
   % symptoms(Disease, Symptom),
   % write('The entered symptom is related to the disease: '), write(Disease), nl,
    %write('The effects of this disease include: '), nl,
   % findall(Effect, has_effect(Disease,Effect), Effects),
   % print_effects(Effects).
%identify_disease_and_effects(Symptom) :-
% write('The entered symptom is related to the disease: '),
% write(Disease), nl,
  % write('The effects of this disease include: '), nl,
  % print_effects(Disease).

%print_effects(Disease) :-
%    has_effect(Disease, Effect),
%    write('- '), write(Effect), nl,
%    fail.
%print_effects(_).


%start :-
   % write('Enter a symptom: '),
   % read_line_to_string(user_input, Symptom),
   % identify_disease_and_effects(Symptom),
   % !.
identify_disease_and_effects(Disease, Symptom) :-
    symptoms(Disease, Symptom),
    write('The entered symptom is related to the disease: '), write(Disease), nl,
    write('The effects of this disease include: '), nl,
    print_effects(Disease).

print_effects(Disease) :-
    has_effect(Disease, Effect),
    write('- '), write(Effect), nl,
    fail.
print_effects(_).

start :-
    write('Enter a symptom: '),
    read_line_to_string(user_input, Symptom),
    write('Enter a disease as x: '),
    read_line_to_string(user_input, Disease),
    identify_disease_and_effects(Disease, Symptom),
    !.





