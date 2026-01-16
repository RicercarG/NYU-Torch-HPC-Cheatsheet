# NYU-Torch-HPC-Cheatsheet

Written by [Yuanhe Guo](https://ricercarg.github.io) (<yg2709@nyu.edu>)

A beginner guide for getting started with running **python** on nyu torch hpc.

Each time I want to setup a new environment on NYU Torch HPC, I have to go through the official documentation and search for the commands I need. Meanwhile, there exist quite a few common issues whose solutions are not covered by the offical documentation. So I decided to write a cheatsheet for myself and others who may need it.

I wrote some complex commands into bash scripts, so that getting python run flawlessly on NYU Greene HPC is as simple as ordering a burger in a fast food restaurant.

## Acknowledgement

* The official documentation: [Torch HPC Getting Started](<https://services.rt.nyu.edu/docs/hpc/getting_started/intro/>)
* I started my journey with HPC by following [HPC Notes by Hammond Liu](https://abstracted-crime-34a.notion.site/63aae4cc39904d11a5c744f480a42017?v=261a410e1fe24d0294ed744c21a41015&p=7ed5e95ce1dc400898f6462f6de47d2c&pm=s)

## Important updates (planning to move this section to Releases)

## Topics covered in this cheatsheet

Please feel free to open an issue if you have any questions or suggestions.

* Prereq
  * [ ] Apply for NYU Torch HPC access
  * [x] Basic Linux commands
  * [x] Vim
  * [x] Vscode
* Quick Starting Pack
  * [ ] Connect to HPC
  * [x] Request CPU/GPU Sessions
  * [x] Interactive sessions for conda
  * [x] Jupyter Notebook
  * [x] Batch jobs
* Manual Setup
  * [ ] Offical guide Index
* Trouble Shooting
  * [x] How can I quit python/singualrity/runtime?
  * [x] How can I jump back when kicked off by accident?
  * [x] Disk quota exceeded
  * [x] Could not login server through vscode
  * [x] Out of Memory Error
  * [x] Could not open singularity environment
  * [x] Some linux commands could not be executed
* Advanced Topics (Useful Tricks)
  * [x] Setup bashrc
  * [x] Setup ssh key pairs
  * [ ] Collection of useful linux commands
  * [x] Sharing files with Other HPC Users
  * [x] Sending files to/from HPC
  * [ ] SSH Tunneling on GPU Nodes
  * [x] AWS S3 Connection
  * [x] Access through iPad
  * [ ] Using in-node memory for faster training(move to Advanced Topics)
  * [ ] Distributed training on multi-node using ```RDZV```, ```srun -W``` and ```torchrun```
  * [ ] Submitting Topology-aware GPU jobs for NCCL-heavy training
  * [ ] Use SLURM Job array to sweep hyper parameter and random seed
