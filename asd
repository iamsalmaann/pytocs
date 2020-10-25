# Enter your code here. Read input from STDIN. Print output to STDOUTdef is_not_overlap(current_task_details, previous_task_details):
current_start = current_task_details["start"]
current_end = current_task_details["end"]
previous_start = previous_task_details["start"]
previous_end = previous_task_details["end"]
if (current_start <= previous_start and current_end <= previous_start) or (
current_start >= previous_end and current_end >= previous_end):
return True
return Falsenumber_of_tasks = int(input())


tasks = []
for i in range(0, number_of_tasks):

start, end = input().split(" ")
details = {
"start": int(start),
"end": int(end),
}
details["total_time"] = details["end"] - details["start"] 
tasks.append(details)previous_tasks = []
overlap_count = 0
for task_details in sorted(tasks, key=lambda task: task["total_time"]) :
if all(is_not_overlap(task_details, previous_task_details) for previous_task_details in previous_tasks):
overlap_count+=1
previous_tasks.append(task_details)
print(overlap_count)
