#!/bin/bash

############################## 220525 ###########################
# jaeyoung
for i in 25000 12500
do
	CUDA_VISIBLE_DEVICES=5 python direction.0.0.5.py \
					--dataset cifar10 \
					--num_workers 2 \
					--num_sample $i \
					--epochs 300 \
					--decay_epoch 150 225 \
					--batch_size 128 \
					--lr 0.1 \
					--weight_decay 0.0032 \
					--momentum 0.9 \
					--schedule_type 'step' \
					--net_type resnet18_LN_invariant \
					--save_model \
					--seed 0 1 2 \
					--warmup_epochs 0 \
					--save_dir './logs_inv/'
done

# ECCV
# for i in 0
# do
# 	CUDA_VISIBLE_DEVICES=5 python direction.0.0.5.py \
# 					--dataset cifar10 \
# 					--num_workers 2 \
# 					--num_sample $i \
# 					--epochs 300 \
# 					--decay_epoch 150 225 \
# 					--batch_size 128 \
# 					--lr 0.1 \
# 					--weight_decay 0.0032 \
# 					--momentum 0.9 \
# 					--schedule_type 'step' \
# 					--net_type resnet18_LN_invariant \
# 					--save_model \
# 					--seed 0 1 2 \
# 					--warmup_epochs 0 \
# 					--save_dir './logs_inv/'
# done

# 4/4
# for i in 3125
# do
# 	CUDA_VISIBLE_DEVICES=5 python direction.0.0.5.py \
# 					--dataset cifar10 \
# 					--num_workers 2 \
# 					--num_sample $i \
# 					--epochs 300 \
# 					--decay_epoch 150 225 \
# 					--batch_size 128 \
# 					--lr 0.1 \
# 					--weight_decay 0.0004 \
# 					--momentum 0.9 \
# 					--schedule_type 'step' \
# 					--net_type resnet18_LN_invariant \
# 					--save_model \
# 					--seed 0 1 2 \
# 					--warmup_epochs 0 \
# 					--save_dir './logs_inv/'
# done

############################# 220414 ###########################
# for i in -13
# do	
# 	wd=$(echo 2^$i | bc -l)
# 	CUDA_VISIBLE_DEVICES=5 python direction.0.0.5.py \
# 					--dataset cifar10 \
# 					--num_workers 2 \
# 					--num_sample 0 \
# 					--epochs 300 \
# 					--decay_epoch 150 225 \
# 					--batch_size 128 \
# 					--optim SGD \
# 					--lr 0.1 \
# 					--weight_decay $wd \
# 					--momentum 0.9 \
# 					--schedule_type 'step' \
# 					--net_type resnet18_GBN_invariant2 \
# 					--width 1 \
# 					--save_model \
# 					--seed 0 1 2 \
# 					--warmup_epochs 0 \
# 					--save_dir './logs_width_tuning/'
# done

############################# 220407 ###########################
# for i in 0.0011 0.0012
# do
# 	CUDA_VISIBLE_DEVICES=5 python direction.0.0.5.py \
# 					--dataset cifar10 \
# 					--num_workers 2 \
# 					--num_sample 12500 \
# 					--epochs 300 \
# 					--decay_epoch 150 225 \
# 					--batch_size 128 \
# 					--optim SGD \
# 					--lr 0.1 \
# 					--weight_decay $i \
# 					--momentum 0.9 \
# 					--schedule_type 'step' \
# 					--net_type resnet18_GBN_invariant2 \
# 					--width 0.25 \
# 					--save_model \
# 					--seed 0 1 2 3 4 \
# 					--warmup_epochs 0 \
# 					--save_dir './logs_width_tuning/'
# done

############################# 220406 ###########################
# for i in 0.0012 0.0011
# do
# 	CUDA_VISIBLE_DEVICES=5 python direction.0.0.5.py \
# 					--dataset cifar10 \
# 					--num_workers 2 \
# 					--num_sample 12500 \
# 					--epochs 300 \
# 					--decay_epoch 150 225 \
# 					--batch_size 128 \
# 					--optim SGD \
# 					--lr 0.1 \
# 					--weight_decay $i \
# 					--momentum 0.9 \
# 					--schedule_type 'step' \
# 					--net_type resnet18_GBN_invariant2 \
# 					--width 0.5 \
# 					--save_model \
# 					--seed 0 1 2 3 4 \
# 					--warmup_epochs 0 \
# 					--save_dir './logs_width_tuning/'
# done

# for i in 0.0022 0.0024 0.0044
# do
# 	CUDA_VISIBLE_DEVICES=5 python direction.0.0.5.py \
# 					--dataset cifar10 \
# 					--num_workers 2 \
# 					--num_sample 6250 \
# 					--epochs 300 \
# 					--decay_epoch 150 225 \
# 					--batch_size 128 \
# 					--optim SGD \
# 					--lr 0.1 \
# 					--weight_decay $i \
# 					--momentum 0.9 \
# 					--schedule_type 'step' \
# 					--net_type resnet18_GBN_invariant2 \
# 					--width 0.5 \
# 					--save_model \
# 					--seed 0 1 2 3 4 \
# 					--warmup_epochs 0 \
# 					--save_dir './logs_width_tuning/'
# done

############################# 220405 ###########################
# for i in 0.0013 0.0014
# do
# 	CUDA_VISIBLE_DEVICES=5 python direction.0.0.5.py \
# 					--dataset cifar10 \
# 					--num_workers 2 \
# 					--num_sample 12500 \
# 					--epochs 300 \
# 					--decay_epoch 150 225 \
# 					--batch_size 128 \
# 					--optim SGD \
# 					--lr 0.1 \
# 					--weight_decay $i \
# 					--momentum 0.9 \
# 					--schedule_type 'step' \
# 					--net_type resnet18_GBN_invariant2 \
# 					--width 0.5 \
# 					--save_model \
# 					--seed 0 \
# 					--warmup_epochs 0 \
# 					--save_dir './logs_width_tuning/'
# done

# for i in 0.0026 0.0028
# do
# 	CUDA_VISIBLE_DEVICES=5 python direction.0.0.5.py \
# 					--dataset cifar10 \
# 					--num_workers 2 \
# 					--num_sample 6250 \
# 					--epochs 300 \
# 					--decay_epoch 150 225 \
# 					--batch_size 128 \
# 					--optim SGD \
# 					--lr 0.1 \
# 					--weight_decay $i \
# 					--momentum 0.9 \
# 					--schedule_type 'step' \
# 					--net_type resnet18_GBN_invariant2 \
# 					--width 0.5 \
# 					--save_model \
# 					--seed 0 \
# 					--warmup_epochs 0 \
# 					--save_dir './logs_width_tuning/'
# done

############################# 220404 ###########################
# for i in 0 25000 12500 6250 3125
# do
# 	CUDA_VISIBLE_DEVICES=5 python direction.0.0.3.py \
# 					--dataset cifar10 \
# 					--num_workers 2 \
# 					--num_sample $i \
# 					--epochs 300 \
# 					--decay_epoch 150 225 \
# 					--batch_size 128 \
# 					--optim AdamW \
# 					--lr 0.0256 \
# 					--weight_decay 0.1 \
# 					--momentum 0.9 \
# 					--schedule_type 'step' \
# 					--net_type resnet18_GBN_invariant2 \
# 					--save_model \
# 					--seed 0 1 2 \
# 					--warmup_epochs 0 \
# 					--save_dir './logs_AdamW/'
# done

# for i in 0 25000 12500 6250 3125
# do
# 	CUDA_VISIBLE_DEVICES=5 python direction.0.0.3.py \
# 					--dataset cifar10 \
# 					--num_workers 2 \
# 					--num_sample $i \
# 					--epochs 300 \
# 					--decay_epoch 150 225 \
# 					--batch_size 128 \
# 					--optim AdamW \
# 					--lr 0.001 \
# 					--weight_decay 2.56 \
# 					--momentum 0.9 \
# 					--schedule_type 'step' \
# 					--net_type resnet18_GBN_invariant2 \
# 					--save_model \
# 					--seed 0 1 2 \
# 					--warmup_epochs 0 \
# 					--save_dir './logs_AdamW/'
# done

# for i in 3125
# do
# 	CUDA_VISIBLE_DEVICES=5 python direction.0.0.3.py \
# 					--dataset cifar10 \
# 					--num_workers 2 \
# 					--num_sample $i \
# 					--epochs 300 \
# 					--decay_epoch 150 225 \
# 					--batch_size 128 \
# 					--optim AdamW \
# 					--lr 0.025 \
# 					--weight_decay 0.1 \
# 					--momentum 0.9 \
# 					--schedule_type 'step' \
# 					--net_type resnet18_GBN_invariant2 \
# 					--save_model \
# 					--seed 0 1 2 3 4 \
# 					--warmup_epochs 0 \
# 					--save_dir './logs_AdamW_tuning/'
# done

# for i in 6250
# do
# 	CUDA_VISIBLE_DEVICES=5 python direction.0.0.3.py \
# 					--dataset cifar10 \
# 					--num_workers 2 \
# 					--num_sample $i \
# 					--epochs 300 \
# 					--decay_epoch 150 225 \
# 					--batch_size 128 \
# 					--optim AdamW \
# 					--lr 0.016 \
# 					--weight_decay 0.1 \
# 					--momentum 0.9 \
# 					--schedule_type 'step' \
# 					--net_type resnet18_GBN_invariant2 \
# 					--save_model \
# 					--seed 0 1 2 3 4 \
# 					--warmup_epochs 0 \
# 					--save_dir './logs_AdamW_tuning/'
# done

############################# 220401 ###########################
# for i in 3125
# do
# 	CUDA_VISIBLE_DEVICES=5 python direction.0.0.3.py \
# 					--dataset cifar10 \
# 					--num_workers 2 \
# 					--num_sample $i \
# 					--epochs 300 \
# 					--decay_epoch 150 225 \
# 					--batch_size 128 \
# 					--optim AdamW \
# 					--lr 0.026 \
# 					--weight_decay 0.1 \
# 					--momentum 0.9 \
# 					--schedule_type 'step' \
# 					--net_type resnet18_GBN_invariant2 \
# 					--save_model \
# 					--seed 0 1 2 \
# 					--warmup_epochs 0 \
# 					--save_dir './logs_AdamW_tuning/'
# done

# for i in 6250
# do
# 	CUDA_VISIBLE_DEVICES=5 python direction.0.0.3.py \
# 					--dataset cifar10 \
# 					--num_workers 2 \
# 					--num_sample $i \
# 					--epochs 300 \
# 					--decay_epoch 150 225 \
# 					--batch_size 128 \
# 					--optim AdamW \
# 					--lr 0.016 \
# 					--weight_decay 0.1 \
# 					--momentum 0.9 \
# 					--schedule_type 'step' \
# 					--net_type resnet18_GBN_invariant2 \
# 					--save_model \
# 					--seed 0 1 2 \
# 					--warmup_epochs 0 \
# 					--save_dir './logs_AdamW_tuning/'
# done

# for i in 3125
# do
# 	CUDA_VISIBLE_DEVICES=5 python direction.0.0.3.py \
# 					--dataset cifar10 \
# 					--num_workers 2 \
# 					--num_sample $i \
# 					--epochs 300 \
# 					--decay_epoch 150 225 \
# 					--batch_size 128 \
# 					--optim AdamW \
# 					--lr 0.010 \
# 					--weight_decay 0.1 \
# 					--momentum 0.9 \
# 					--schedule_type 'step' \
# 					--net_type resnet18_GBN_invariant2 \
# 					--save_model \
# 					--seed 0 1 2 \
# 					--warmup_epochs 0 \
# 					--save_dir './logs_AdamW_tuning/'
# done

############################# 220330 ###########################
# for i in 12500 6250 3125
# do
# 	CUDA_VISIBLE_DEVICES=5 python direction.0.0.3.py \
# 					--dataset cifar10 \
# 					--num_workers 2 \
# 					--num_sample $i \
# 					--epochs 300 \
# 					--decay_epoch 150 225 \
# 					--batch_size 128 \
# 					--optim AdamW \
# 					--lr 0.005657 \
# 					--weight_decay 0.1 \
# 					--momentum 0.9 \
# 					--schedule_type 'step' \
# 					--net_type resnet18_GBN_invariant2 \
# 					--save_model \
# 					--seed 0 1 2 \
# 					--warmup_epochs 0 \
# 					--save_dir './logs_AdamW/'
# done

############################# 220329 ###########################
# for i in 0 25000 12500 6250 3125
# do
# 	CUDA_VISIBLE_DEVICES=5 python direction.0.0.3.py \
# 					--dataset cifar10 \
# 					--num_workers 2 \
# 					--num_sample $i \
# 					--epochs 300 \
# 					--decay_epoch 150 225 \
# 					--batch_size 128 \
# 					--optim AdamW \
# 					--lr 0.001 \
# 					--weight_decay 3.2 \
# 					--momentum 0.9 \
# 					--schedule_type 'step' \
# 					--net_type resnet18_GBN_invariant2 \
# 					--save_model \
# 					--seed 0 1 2 \
# 					--warmup_epochs 0 \
# 					--save_dir './logs_AdamW/'
# done

############################# 220316 ###########################
# for i in 0 25000 12500 6250 3125
# do
# 	CUDA_VISIBLE_DEVICES=5 python direction.0.0.4.py \
# 					--dataset cifar10 \
# 					--num_workers 2 \
# 					--num_sample $i \
# 					--epochs 600 \
# 					--decay_epoch 300 450 \
# 					--batch_size 128 \
# 					--lr 0.1 \
# 					--weight_decay 0.0016 \
# 					--momentum 0.9 \
# 					--schedule_type 'step' \
# 					--net_type resnet18_GBN_invariant2 \
# 					--save_model \
# 					--seed 0 1 2 \
# 					--warmup_epochs 0 \
# 					--save_dir './logs_epoch/'
# done

# for i in 0 25000 12500 6250 3125
# do
# 	CUDA_VISIBLE_DEVICES=5 python direction.0.0.4.py \
# 					--dataset cifar10 \
# 					--num_workers 2 \
# 					--num_sample $i \
# 					--epochs 600 \
# 					--decay_epoch 300 450 \
# 					--batch_size 128 \
# 					--lr 1.6 \
# 					--weight_decay 0.0001 \
# 					--momentum 0.9 \
# 					--schedule_type 'step' \
# 					--net_type resnet18_GBN_invariant2 \
# 					--save_model \
# 					--seed 0 1 2 \
# 					--warmup_epochs 0 \
# 					--save_dir './logs_epoch/'
# done

# for i in 12500
# do
# 	CUDA_VISIBLE_DEVICES=5 python direction.0.0.4.py \
# 					--dataset cifar10 \
# 					--num_workers 2 \
# 					--num_sample $i \
# 					--epochs 600 \
# 					--decay_epoch 300 450 \
# 					--batch_size 128 \
# 					--lr 0.8 \
# 					--weight_decay 0.0008 \
# 					--momentum 0.9 \
# 					--schedule_type 'step' \
# 					--net_type resnet18_GBN_invariant2 \
# 					--save_model \
# 					--seed 0 1 2 \
# 					--warmup_epochs 0 \
# 					--save_dir './logs_epoch/'
# done
############################## 220306 ###########################
# GCP
# for i in 2048 1024 512 256
# do
# 	CUDA_VISIBLE_DEVICES=5 python direction.0.0.3.py \
# 					--dataset cifar10 \
# 					--num_workers 2 \
# 					--num_sample 0 \
# 					--epochs 300 \
# 					--decay_epoch 150 225 \
# 					--batch_size $i \
# 					--lr 8 \
# 					--weight_decay 0.0008 \
# 					--momentum 0 \
# 					--schedule_type 'step' \
# 					--net_type resnet18_GBN_invariant2 \
# 					--save_model \
# 					--seed 0 1 2 \
# 					--warmup_epochs 0 \
# 					--save_dir './logs_inv_wo_moment/'
# done

############################## 220302 ###########################
# GCP
# for i in 0 25000 12500 6250 3125
# do
# 	CUDA_VISIBLE_DEVICES=5 python direction.0.0.3.py \
# 					--dataset cifar10 \
# 					--num_workers 2 \
# 					--num_sample $i \
# 					--epochs 300 \
# 					--decay_epoch 150 225 \
# 					--batch_size 128 \
# 					--lr 0.8 \
# 					--weight_decay 0.0008 \
# 					--momentum 0.9 \
# 					--schedule_type 'cosine' \
# 					--net_type resnet18_GBN_invariant2 \
# 					--save_model \
# 					--seed 0 1 2 \
# 					--warmup_epochs 0 \
# 					--save_dir './logs_inv_cosine/'
# done

############################## 220226 ###########################
# # 8gpu-ICML3
# for i in 32
# do
# 	CUDA_VISIBLE_DEVICES=5 python direction.0.0.2.py \
# 					--dataset cifar10 \
# 					--num_sample 12500 \
# 					--epochs 300 \
# 					--epoch_step 150 225 \
# 					--batch_size $i \
# 					--lr 0.1 \
# 					--weight_decay 0.0016 \
# 					--momentum 0.9 \
# 					--net_type resnet18_GBN_invariant2 \
# 					--save_model \
# 					--seed 0 1 2 \
# 					--warm_up_epoch 0 \
# 					--save_dir './logs_inv/'
# done

############################## 220222 ###########################
# GCP
# for i in 0
# do
# 	CUDA_VISIBLE_DEVICES=10 python direction.0.0.2.py \
# 					--GCP \
# 					--dataset imagenet \
# 					--num_workers 12 \
# 					--num_sample $i \
# 					--epochs 90 \
# 					--epoch_step 30 60 80 \
# 					--batch_size 256 \
# 					--lr 0.1 \
# 					--weight_decay 0.0016 \
# 					--momentum 0.9 \
# 					--net_type efficientnet_b0_inv \
# 					--save_model \
# 					--seed 0 1 2 \
# 					--warm_up_epoch 0 \
# 					--save_dir './logs_trash/'
# done

############################## 220222 ###########################
# GCP
# for i in 0
# do
# 	CUDA_VISIBLE_DEVICES=7,8 python direction.0.0.2.py \
# 					--GCP \
# 					--dataset imagenet \
# 					--num_workers 64 \
# 					--num_sample $i \
# 					--epochs 90 \
# 					--epoch_step 30 60 80 \
# 					--batch_size 512 \
# 					--lr 0.1 \
# 					--weight_decay 0.0001 \
# 					--momentum 0.9 \
# 					--net_type efficientnet_b0_inv \
# 					--save_model \
# 					--seed 0 1 2 \
# 					--warm_up_epoch 0 \
# 					--save_dir './logs_trash/'
# done
# GCP
# for i in 0
# do
# 	CUDA_VISIBLE_DEVICES=5,6 python direction.0.0.2.py \
# 					--GCP \
# 					--dataset imagenet \
# 					--num_workers 32 \
# 					--num_sample $i \
# 					--epochs 90 \
# 					--epoch_step 30 60 80 \
# 					--batch_size 256 \
# 					--lr 0.1 \
# 					--weight_decay 0.0001 \
# 					--momentum 0.9 \
# 					--net_type efficientnet_b0_inv \
# 					--save_model \
# 					--seed 0 \
# 					--warm_up_epoch 0 \
# 					--save_dir './logs_trash/'
# done


############################## 220127 ###########################
# 8gpu-ICML1
# for i in 0
# do
# 	CUDA_VISIBLE_DEVICES=5 python direction.0.0.2.py \
# 					--dataset cifar100 \
# 					--num_sample $i \
# 					--epochs 300 \
# 					--epoch_step 150 225 \
# 					--batch_size 128 \
# 					--lr 0.4 \
# 					--weight_decay 0.0004 \
# 					--momentum 0.9 \
# 					--net_type densenetBC100_GBN_invariant \
# 					--save_model \
# 					--seed 0 1 \
# 					--warm_up_epoch 0 \
# 					--save_dir './logs_inv/'
# done

# # 8gpu-ICML3
# for i in 3125 6250 12500 25000 0
# do
# 	CUDA_VISIBLE_DEVICES=5 python direction.0.0.2.py \
# 					--dataset cifar100 \
# 					--num_sample $i \
# 					--epochs 300 \
# 					--epoch_step 150 225 \
# 					--batch_size 128 \
# 					--lr 0.4 \
# 					--weight_decay 0.0004 \
# 					--momentum 0.9 \
# 					--net_type densenetBC100_GBN_invariant \
# 					--save_model \
# 					--seed 0 1 \
# 					--warm_up_epoch 0 \
# 					--save_dir './logs_inv/'
# done

# 8gpu-ICML1
# for i in 12500 25000 50000 0
# do
# 	CUDA_VISIBLE_DEVICES=5 python direction.0.0.2.py \
# 					--dataset tinyimagenet \
# 					--num_workers 2 \
# 					--num_sample $i \
# 					--epochs 120 \
# 					--epoch_step 60 90 \
# 					--batch_size 256 \
# 					--lr 0.1 \
# 					--weight_decay 0.0002 \
# 					--momentum 0.9 \
# 					--net_type resnet18_GBN_inv_stl \
# 					--save_model \
# 					--seed 0 1 \
# 					--warm_up_epoch 0 \
# 					--save_dir './logs_inv/'
# done

############################## 220126 ###########################
# 8gpu-ICML1
# for i in 25000 50000
# do
# 	CUDA_VISIBLE_DEVICES=5 python direction.0.0.2.py \
# 					--dataset tinyimagenet \
# 					--num_workers 2 \
# 					--num_sample $i \
# 					--epochs 120 \
# 					--epoch_step 60 90 \
# 					--batch_size 256 \
# 					--lr 0.4 \
# 					--weight_decay 0.0001 \
# 					--momentum 0.9 \
# 					--net_type resnet18_GBN_inv_stl \
# 					--save_model \
# 					--seed 0 1 \
# 					--warm_up_epoch 0 \
# 					--save_dir './logs_inv/'
# done

# # 8gpu-ICML2
# for i in 3125 6250 12500 25000 0
# do
# 	CUDA_VISIBLE_DEVICES=5 python direction.0.0.2.py \
# 					--dataset cifar100 \
# 					--num_sample $i \
# 					--epochs 300 \
# 					--epoch_step 150 225 \
# 					--batch_size 128 \
# 					--lr 0.1 \
# 					--weight_decay 0.0064 \
# 					--momentum 0.9 \
# 					--net_type densenetBC100_GBN_invariant \
# 					--save_model \
# 					--seed 0 1 2 \
# 					--warm_up_epoch 0 \
# 					--save_dir './logs_inv/'
# done

# 8gpu-ICML1
# for i in 0
# do
# 	CUDA_VISIBLE_DEVICES=5 python direction.0.0.2.py \
# 					--dataset tinyimagenet \
# 					--num_workers 2 \
# 					--num_sample $i \
# 					--epochs 120 \
# 					--epoch_step 60 90 \
# 					--batch_size 256 \
# 					--lr 0.1 \
# 					--weight_decay 0.0001 \
# 					--momentum 0.9 \
# 					--net_type resnet18_GBN_inv_stl \
# 					--save_model \
# 					--seed 0 1 2 \
# 					--warm_up_epoch 0 \
# 					--save_dir './logs_inv/'
# done


############################## 220125 ###########################
# # 8gpu-ICML3
# for i in 3125 6250 12500 25000 0
# do
# 	CUDA_VISIBLE_DEVICES=5 python direction.0.0.2.py \
# 					--dataset cifar100 \
# 					--num_sample $i \
# 					--epochs 300 \
# 					--epoch_step 150 225 \
# 					--batch_size 128 \
# 					--lr 3.2 \
# 					--weight_decay 0.0001 \
# 					--momentum 0.9 \
# 					--net_type densenetBC100_GBN_invariant \
# 					--save_model \
# 					--seed 0 1 2 \
# 					--warm_up_epoch 0 \
# 					--save_dir './logs_inv/'
# done

# 8gpu-ICML1
# for i in 12500
# do
# 	CUDA_VISIBLE_DEVICES=0 python direction.0.0.2.test.py \
# 					--dataset tinyimagenet \
# 					--test_freq 1 \
# 					--num_sample $i \
# 					--epochs 300 \
# 					--epoch_step 150 225 \
# 					--batch_size 256 \
# 					--lr 0.1 \
# 					--weight_decay 0.0001 \
# 					--momentum 0.9 \
# 					--net_type resnet18_GBN_inv_stl \
# 					--save_model \
# 					--seed 0 \
# 					--warm_up_epoch 0 \
# 					--save_dir './logs_trash/'
# done

# 8gpu-ICML2
# for i in 3125 6250 12500 25000 50000
# do
# 	CUDA_VISIBLE_DEVICES=5 python direction.0.0.2.py \
# 					--dataset cifar10 \
# 					--num_sample $i \
# 					--epochs 300 \
# 					--epoch_step 150 225 \
# 					--batch_size 128 \
# 					--lr 3.2 \
# 					--weight_decay 0.0001 \
# 					--momentum 0.9 \
# 					--net_type resnet18_GBN \
# 					--save_model \
# 					--seed 0 1 2 \
# 					--warm_up_epoch 0 \
# 					--save_dir './logs_var/'
# done

# # 8gpu-ICML2
# for i in 3125 6250 12500 25000 50000
# do
# 	CUDA_VISIBLE_DEVICES=5 python direction.0.0.2.py \
# 					--dataset cifar10 \
# 					--num_sample $i \
# 					--epochs 300 \
# 					--epoch_step 150 225 \
# 					--batch_size 128 \
# 					--lr 0.1 \
# 					--weight_decay 0.0032 \
# 					--momentum 0.9 \
# 					--net_type resnet18_GBN \
# 					--save_model \
# 					--seed 0 1 2 \
# 					--warm_up_epoch 0 \
# 					--save_dir './logs_var/'
# done

# # 8gpu-ICML2
# for i in 3125 6250 12500 25000 50000
# do
# 	CUDA_VISIBLE_DEVICES=5 python direction.0.0.2.py \
# 					--dataset cifar10 \
# 					--num_sample $i \
# 					--epochs 300 \
# 					--epoch_step 150 225 \
# 					--batch_size 128 \
# 					--lr 0.5657 \
# 					--weight_decay 0.0005657 \
# 					--momentum 0.9 \
# 					--net_type resnet18_GBN \
# 					--save_model \
# 					--seed 0 1 2 \
# 					--warm_up_epoch 0 \
# 					--save_dir './logs_var/'
# done
############################## 220124 ###########################
# 8gpu - ICML3
# for i in 3125 6250 12500 25000 50000
# do
# 	CUDA_VISIBLE_DEVICES=5 python direction.0.0.2.py \
# 					--dataset cifar10 \
# 					--num_sample $i \
# 					--epochs 300 \
# 					--epoch_step 150 225 \
# 					--batch_size 128 \
# 					--lr 1 \
# 					--weight_decay 0.0064 \
# 					--momentum 0 \
# 					--net_type resnet18_GBN_invariant2 \
# 					--save_model \
# 					--seed 0 1 2 \
# 					--warm_up_epoch 0 \
# 					--save_dir './logs_inv_wo_moment/'
# done

# # 8gpu - ICML3
# for i in 3125 6250 12500 25000 50000
# do
# 	CUDA_VISIBLE_DEVICES=5 python direction.0.0.2.py \
# 					--dataset cifar10 \
# 					--num_sample $i \
# 					--epochs 300 \
# 					--epoch_step 150 225 \
# 					--batch_size 128 \
# 					--lr 4 \
# 					--weight_decay 0.0004 \
# 					--momentum 0 \
# 					--net_type resnet18_GBN_invariant2 \
# 					--save_model \
# 					--seed 0 1 2 \
# 					--warm_up_epoch 0 \
# 					--save_dir './logs_inv_wo_moment/'
# done

# 8gpu-ICML3
# for i in 2
# do
# 	CUDA_VISIBLE_DEVICES=5 python direction.0.0.2.py \
# 					--dataset cifar10 \
# 					--num_sample 0 \
# 					--epochs 300 \
# 					--epoch_step 150 225 \
# 					--batch_size 128 \
# 					--lr $i \
# 					--weight_decay 0.0001 \
# 					--momentum 0 \
# 					--net_type resnet18_GBN_invariant2 \
# 					--save_model \
# 					--seed 0 \
# 					--warm_up_epoch 0 \
# 					--save_dir './logs_inv_wo_moment_trash/'
# done

# 8gpu-ICML2
# for i in 2048
# do
# 	CUDA_VISIBLE_DEVICES=5 python direction.0.0.2.py \
# 					--dataset cifar10 \
# 					--num_sample 0 \
# 					--epochs 300 \
# 					--epoch_step 150 225 \
# 					--batch_size $i \
# 					--lr 3.2 \
# 					--weight_decay 0.0001 \
# 					--momentum 0.9 \
# 					--net_type resnet18_GBN_invariant2 \
# 					--save_model \
# 					--seed 0 1 2 \
# 					--warm_up_epoch 0 \
# 					--save_dir './logs_inv/'
# done

# # 8gpu-ICML2
# for i in 2048
# do
# 	CUDA_VISIBLE_DEVICES=5 python direction.0.0.2.py \
# 					--dataset cifar10 \
# 					--num_sample 0 \
# 					--epochs 300 \
# 					--epoch_step 150 225 \
# 					--batch_size $i \
# 					--lr 0.1 \
# 					--weight_decay 0.0032 \
# 					--momentum 0.9 \
# 					--net_type resnet18_GBN_invariant2 \
# 					--save_model \
# 					--seed 0 1 2 \
# 					--warm_up_epoch 0 \
# 					--save_dir './logs_inv/'
# done

# # 8gpu-ICML2
# for i in 2048
# do
# 	CUDA_VISIBLE_DEVICES=5 python direction.0.0.2.py \
# 					--dataset cifar10 \
# 					--num_sample 0 \
# 					--epochs 300 \
# 					--epoch_step 150 225 \
# 					--batch_size $i \
# 					--lr 0.5657 \
# 					--weight_decay 0.0005657 \
# 					--momentum 0.9 \
# 					--net_type resnet18_GBN_invariant2 \
# 					--save_model \
# 					--seed 0 1 2 \
# 					--warm_up_epoch 0 \
# 					--save_dir './logs_inv/'
# done

############################## 220124 ###########################
# 8gpu-ICML3
# for i in 3125 6250 12500 25000 
# do
# 	CUDA_VISIBLE_DEVICES=5 python direction.0.0.2.py \
# 					--dataset cifar10 \
# 					--num_sample $i \
# 					--epochs 300 \
# 					--epoch_step 150 225 \
# 					--batch_size 128 \
# 					--lr 0.4 \
# 					--weight_decay 0.0004 \
# 					--momentum 0.9 \
# 					--net_type resnet18_GBN_invariant2 \
# 					--save_model \
# 					--seed 0 1 2 \
# 					--warm_up_epoch 0 \
# 					--save_dir './logs_inv/'
# done

############################## 220123 ###########################
# 8gpu-ICML3
# for i in 3125 6250 12500 25000 
# do
# 	CUDA_VISIBLE_DEVICES=5 python direction.0.0.2.py \
# 					--dataset cifar10 \
# 					--num_sample $i \
# 					--epochs 300 \
# 					--epoch_step 150 225 \
# 					--batch_size 128 \
# 					--lr 0.1414 \
# 					--weight_decay 0.0001414 \
# 					--momentum 0.9 \
# 					--net_type resnet18_GBN_invariant2 \
# 					--save_model \
# 					--seed 0 1 2 \
# 					--warm_up_epoch 0 \
# 					--save_dir './logs_inv/'
# done

# 8gpu-JDG
# for i in 0.2 0.4 0.8 1.6 3.2
# do
# 	CUDA_VISIBLE_DEVICES=5 python direction.0.0.2.py \
# 					--dataset cifar10 \
# 					--num_sample 12500 \
# 					--epochs 300 \
# 					--epoch_step 150 225 \
# 					--batch_size 256 \
# 					--lr $i \
# 					--weight_decay 0.0001 \
# 					--momentum 0.9 \
# 					--net_type resnet18_GBN_invariant2 \
# 					--save_model \
# 					--seed 0 1 2 \
# 					--warm_up_epoch 0 \
# 					--save_dir './logs_inv/'
# done

# 8gpu-ICML
# for i in 0.0001 0.0002 0.0004 0.0008 0.0016 0.0032
# do
# 	CUDA_VISIBLE_DEVICES=5 python direction.0.0.2.py \
# 					--dataset cifar10 \
# 					--num_sample 0 \
# 					--epochs 300 \
# 					--epoch_step 150 225 \
# 					--batch_size 256 \
# 					--lr 0.1 \
# 					--weight_decay $i \
# 					--momentum 0.9 \
# 					--net_type resnet18_GBN_invariant2 \
# 					--save_model \
# 					--seed 0 1 2 \
# 					--warm_up_epoch 0 \
# 					--save_dir './logs_inv/'
# done

