az group create --name "pcfert" \
  --location "westus2"

az storage account create --name "pcfert" \
  --resource-group "pcfert" \
  --location "westus2" \
  --sku "Standard_LRS"

AZURE_STORAGE_ACCOUNT_KEY=$(az storage account keys list --account-name pcfert --resource-group pcfert | jq -r .[0].value)

az storage container create --name ertstorage \
  --account-name pcfert
