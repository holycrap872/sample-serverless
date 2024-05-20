import json
import sys


def lambda_hook(input_str: str) -> None:
    json_dict = json.loads(input_str)
    print("Hello there", json_dict["name"])


if __name__ == "__main__":
    lambda_hook(sys.argv[1])
