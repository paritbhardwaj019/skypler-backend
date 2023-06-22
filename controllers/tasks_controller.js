const tasksService = require("../services/tasks_service");

const createTask = async (req, res) => {
  try {
    const { engineerId, task } = req.body;

    const data = {
      task: task,
      assigned_to: engineerId,
    };

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

module.exports = { createTask, updateTask };
