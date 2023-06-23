const projectService = require("../services/projects_service");

module.exports = {
  addProject: async (req, res) => {
    try {
      const { projectData } = req.body;
      console.log(projectData);
      const projectId = await projectService.addProject({ projectData });

      res.status(201).json({
        success: true,
        message: "Project added successfully",
        projectId,
      });
    } catch (error) {
      console.log("Error: ", error);
      res.status(500).json({
        success: false,
        message: "Internal Server Error",
      });
    }
  },
  updateProjectById: async (req, res) => {
    try {
      const { projectId } = req.params;
      const { projectData } = req.body;

      const rowsAffected = await projectService.updateProjectById({
        projectId,
        projectData,
      });

      if (rowsAffected === 0) {
        res.status(404).json({
          success: false,
          message: "Project not found",
        });
        return;
      }

      res.status(200).json({
        success: true,
        message: "Project updated successfully",
        rowsAffected,
      });
    } catch (error) {
      console.log("Error: ", error);
      res.status(500).json({
        success: false,
        message: "Internal Server Error",
      });
    }
  },
  getAllProjects: async (req, res) => {
    try {
      const projects = await projectService.getAllProjects();
      res.status(200).json({
        success: true,
        message: "Projects retrieved successfully",
        projects,
      });
    } catch (error) {
      console.log("Error:", error);
      res.status(500).json({
        success: false,
        message: "Internal Server Error",
      });
    }
  },

  getBarChartData: async (req, res) => {
    try {
      const barData = await projectService.getProjectStatsByType();

      res.status(200).json({
        success: true,
        barData,
      });
    } catch (error) {
      console.log("Error:", error);
      res.status(500).json({
        success: false,
        message: "Internal Server Error",
      });
    }
  },

  getProjectById: async (req, res) => {
    const { projectId } = req.params; // Assuming the project ID is passed as a parameter in the URL

    try {
      const project = await projectService.getProjectById(projectId);

      if (!project) {
        res.status(404).json({
          success: false,
          message: "Project not found",
        });
        return;
      }

      res.status(200).json({
        success: true,
        message: "Project retrieved successfully",
        project,
      });
    } catch (error) {
      console.log("Error:", error);
      res.status(500).json({
        success: false,
        message: "Internal Server Error",
      });
    }
  },
};
