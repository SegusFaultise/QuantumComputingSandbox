import sys
from qiskit.circuit import QuantumCircuit
from qiskit.providers.basic_provider import BasicProvider, BasicSimulator
import qiskit.qasm3 as q3


FILE_ERROR: str = "[ERROR]: FILE_NOT_FOUND"
QASM_RUN_COMPLETE: str = "[OUTCOME]: QASM_RUN_COMPLETE"

def run_qasm_file(file_path: str, file_operation: str) -> QuantumCircuit:
    try:
        open(file_path, file_operation)
    except FileNotFoundError:
        print(FILE_ERROR)
        sys.exit()

    loaded_q3 = q3.load(file_path)

    return loaded_q3

if __name__ == "__main__":
    print("main() HIT")

    q3_program = run_qasm_file("ghz.qasm", "r")

    print(q3_program)

    q3_program.draw(output="mpl")
