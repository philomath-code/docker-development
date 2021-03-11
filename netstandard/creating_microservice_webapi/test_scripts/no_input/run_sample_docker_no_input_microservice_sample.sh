directory=$(date +%m%d_%X)
mkdir $directory

cp build_dockerimage_noinput.sh $directory
cp create_dockerignorefile.sh $directory
cp create_microservice_no_input.sh $directory
cp run_dockerimage_noinput.sh $directory
cp sampledockerfile_combine_create_output.sh $directory
cp sampledockerfile_output_noinput.txt $directory
cp sampledockerfile_noinput.sh $directory
cd $directory
. create_microservice_no_input.sh

microserviceapp="microserviceapp"

cp build_dockerimage_noinput.sh $microserviceapp
cp create_dockerignorefile.sh $microserviceapp
cp sampledockerfile_combine_create_output.sh $microserviceapp
cp sampledockerfile_noinput.sh $microserviceapp
cp sampledockerfile_output_noinput.txt $microserviceapp 
cp run_dockerimage_noinput.sh $microserviceapp
cd $microserviceapp
. create_dockerignorefile.sh
. sampledockerfile_noinput.sh
. sampledockerfile_combine_create_output.sh
. create_dockerignorefile.sh
. build_dockerimage_noinput.sh
. run_dockerimage_noinput.sh

