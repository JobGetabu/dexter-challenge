part of 'task_cubit.dart';


@freezed
class TaskState with _$TaskState{

  const factory TaskState.initial() = _Initial;
  const factory TaskState.loading() = _Loading;
  const factory TaskState.success(Map<String, dynamic> user) = _Success;
  const factory TaskState.error(String error) = _Error;

  const factory TaskState.getTasks(List<Map<String, dynamic>> tasks) = _SuccessTasks;
  const factory TaskState.getTasksOther(List<Map<String, dynamic>> tasks) = _SuccessTasksOther;

}

