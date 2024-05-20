package Model;

import java.util.Date;

public class Task {

    private int taskId;
    private String taskName;
    private String taskDescription;
    private Date debutTask;
    private Date finTask;
    private String status;
    private int id;

    public Task(int taskId, String taskName, String taskDescription, Date debutTask, Date finTask, String status, int id) {
        this.taskId = taskId;
        this.taskName = taskName;
        this.taskDescription = taskDescription;
        this.debutTask = debutTask;
        this.finTask = finTask;
        this.status = status;
        this.id = id;
    }

    public Task() {

    }

    public int getTaskId() {
        return taskId;
    }

    public void setTaskId(int taskId) {
        this.taskId = taskId;
    }

    public String getTaskName() {
        return taskName;
    }

    public void setTaskName(String taskName) {
        this.taskName = taskName;
    }

    public String getTaskDescription() {
        return taskDescription;
    }

    public void setTaskDescription(String taskDescription) {
        this.taskDescription = taskDescription;
    }

    public Date getDebutTask() {
        return debutTask;
    }

    public void setDebutTask(Date debutTask) {
        this.debutTask = debutTask;
    }

    public Date getFinTask() {
        return finTask;
    }

    public void setFinTask(Date finTask) {
        this.finTask = finTask;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }
}