#!/usr/bin/bash

screen_names=("easee_rfg_train" "spell_tsm_no_noise")

for screen_name in ${screen_names[@]}
do
    screen -X -S $screen_name quit
done