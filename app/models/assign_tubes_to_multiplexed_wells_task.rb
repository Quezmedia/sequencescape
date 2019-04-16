# A {Task} used in {PacBioSequencingPipeline}
# Assigns tagged tube into multiplexed wells on the target plate for pooling.
#
# @note At time of writing (3/4/2019) this is used in:
#   "PacBio Sequencing"
#
# @see Tasks::AssignTubesToWellsHandler for behaviour included in the {WorkflowsController}
class AssignTubesToMultiplexedWellsTask < Task
  belongs_to :purpose

  class AssignTubesToWellsData < Task::RenderElement
    def initialize(request)
      super(request)
    end
  end

  def partial
    'assign_tubes_to_wells'
  end

  def included_for_do_task
    [{ requests: :asset }, :pipeline]
  end

  def included_for_render_task
    [{ requests: :asset }, :pipeline]
  end

  def create_render_element(request)
    request.asset && AssignTubesToWellsData.new(request)
  end

  def render_task(workflow, params)
    super
  end

  def do_task(workflow, params)
    workflow.do_assign_requests_to_multiplexed_wells_task(self, params)
  end
end
