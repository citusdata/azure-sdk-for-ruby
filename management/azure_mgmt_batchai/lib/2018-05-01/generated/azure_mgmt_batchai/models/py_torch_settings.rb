# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::BatchAI::Mgmt::V2018_05_01
  module Models
    #
    # pyTorch job settings.
    #
    class PyTorchSettings

      include MsRestAzure

      # @return [String] Python script file path. The python script to execute.
      attr_accessor :python_script_file_path

      # @return [String] Python interpreter path. The path to the Python
      # interpreter.
      attr_accessor :python_interpreter_path

      # @return [String] Command line arguments. Command line arguments that
      # need to be passed to the python script.
      attr_accessor :command_line_args

      # @return [Integer] Process count. Number of processes to launch for the
      # job execution. The default value for this property is equal to
      # nodeCount property
      attr_accessor :process_count

      # @return [String] Communication backend. Type of the communication
      # backend for distributed jobs. Valid values are 'TCP', 'Gloo' or 'MPI'.
      # Not required for non-distributed jobs.
      attr_accessor :communication_backend


      #
      # Mapper for PyTorchSettings class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'PyTorchSettings',
          type: {
            name: 'Composite',
            class_name: 'PyTorchSettings',
            model_properties: {
              python_script_file_path: {
                client_side_validation: true,
                required: true,
                serialized_name: 'pythonScriptFilePath',
                type: {
                  name: 'String'
                }
              },
              python_interpreter_path: {
                client_side_validation: true,
                required: false,
                serialized_name: 'pythonInterpreterPath',
                type: {
                  name: 'String'
                }
              },
              command_line_args: {
                client_side_validation: true,
                required: false,
                serialized_name: 'commandLineArgs',
                type: {
                  name: 'String'
                }
              },
              process_count: {
                client_side_validation: true,
                required: false,
                serialized_name: 'processCount',
                type: {
                  name: 'Number'
                }
              },
              communication_backend: {
                client_side_validation: true,
                required: false,
                serialized_name: 'communicationBackend',
                type: {
                  name: 'String'
                }
              }
            }
          }
        }
      end
    end
  end
end
