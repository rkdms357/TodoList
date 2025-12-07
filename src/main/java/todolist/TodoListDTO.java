package todolist;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.NonNull;
@Data
@NoArgsConstructor
@AllArgsConstructor

public class TodoListDTO {
    @NonNull private Integer todoId;
    @NonNull private String todo;
    private String isDone;
}
