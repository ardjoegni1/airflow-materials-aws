# Path to the template
TEMPLATE=file://airflow-materials-aws/section-7/code-pipeline/airflow-staging-pipeline.cfn.yml

# Update the stack
aws cloudformation update-stack --stack-name=airflow-staging-pipeline \
    --template-body=$TEMPLATE \
    --parameters ParameterKey=EksClusterName,ParameterValue=airflow \
    ParameterKey=KubectlRoleName,ParameterValue=AirflowCodeBuildServiceRole \
    ParameterKey=GitHubUser,ParameterValue=ardjoegni1 \
    ParameterKey=GitHubToken,ParameterValue=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 \
    ParameterKey=GitSourceRepo,ParameterValue=airflow-eks-docker \
    ParameterKey=GitBranch,ParameterValue=staging