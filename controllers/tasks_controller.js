const tasksService = require("../services/tasks_service");

const createTask = async (req, res) => {
  console.log(req.body);
  try {
    const { engineerId, task, status, project_id } = req.body;

    const data = {
      task: task,
      assigned_to: engineerId,
      status: status,
      project_id: project_id,
    };
    console.log(data);
    const taskID = await tasksService.createTask(data);
    const singleTask = await tasksService.getTaskById(taskID);

    res.json({
      success: true,
      message: "Created Task",
      data: {
        task: singleTask,
      },
    });
  } catch (error) {
    res.status(500).json({ message: "Internal Server Error", success: false });
  }
};

const updateTask = async (req, res) => {
  try {
    const { taskId, taskStatus } = req.body;

    const data = {
      id: taskId,
      status: taskStatus,
    };

    await tasksService.updateTaskById(data);
    const updatedTask = await tasksService.getTaskById(taskId);

    res.json({
      success: true,
      message: "Updated Task",
      data: {
        task: updatedTask,
      },
    });
  } catch (error) {
    res.status(500).json({ message: "Internal Server Error", success: false });
  }
};
const getTasksByProjectId = async (req, res) => {
  try {
    const { projectId } = req.params;
    const tasks = await tasksService.getAllTasksByProjectId(projectId);
    console.log(tasks);
    res.json({
      success: true,
      message: "Retrieved Tasks",
      data: {
        tasks: tasks,
      },
    });
  } catch (error) {
    res.status(500).json({ message: "Internal Server Error", success: false });
  }
};

module.exports = { createTask, updateTask, getTasksByProjectId };
