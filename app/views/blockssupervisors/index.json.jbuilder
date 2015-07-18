json.array!(@blockssupervisors) do |blockssupervisor|
  json.extract! blockssupervisor, :id, :supervisor_id, :block_id, :idtecsem
  json.url blockssupervisor_url(blockssupervisor, format: :json)
end
