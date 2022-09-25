# install CUDA 11.7.1 and CUDNN (latest for CUDA 11.x) in the system

# upgrade pip
pip3 install --upgrade pip
echo

# install PyTorch 1.12.1 with support for CUDA 11.6
pip3 install torch torchvision torchaudio --extra-index-url https://download.pytorch.org/whl/cu116
echo

# convert environment.yaml into pip statements
pip3 install "albumentations==1.1.0" "opencv-python" "pudb==2019.2" "imageio==2.14.1" "imageio-ffmpeg==0.4.7" "pytorch-lightning==1.5.9" "omegaconf==2.1.1" "test-tube>=0.7.5" "streamlit>=0.73.1" "setuptools==59.5.0" "pillow==9.0.1" "einops==0.4.1" "torch-fidelity==0.3.0" "transformers==4.18.0" "torchmetrics==0.6.0" "kornia==0.6"
pip3 install -e "git+https://github.com/CompVis/taming-transformers.git@master#egg=taming-transformers"
pip3 install -e "git+https://github.com/openai/CLIP.git@main#egg=clip"
pip3 install -e .
echo

# download optional models
mkdir -p models/ldm/stable-diffusion-v1

echo "Manually download the checkpoint of Stable Diffusion 1.4"
echo " - https://huggingface.co/CompVis/stable-diffusion-v-1-4-original/blob/main/sd-v1-4-full-ema.ckpt"
echo "   (from: https://huggingface.co/CompVis)"
read -r -p "Please download the file and place it in 'models/ldm/stable-diffusion-v1/model.ckpt' and press [Enter] to continue "

# TBC
echo "To be continued..."
echo