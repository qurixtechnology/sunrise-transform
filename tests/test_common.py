from common.constants import AZURE_FUNCTION_APP_NAME


def test_af_name():
    assert AZURE_FUNCTION_APP_NAME == "func-dev-compute-transform-sunrise-core"
