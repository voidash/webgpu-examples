# WGSL (Webgpu shading language)

## Types

- Concrete Scalars

  - `i32`
  - `u32`
  - `f32`
  - `bool`

- Abstract numerics
  - `abstract-float` [64bit]
  - `abstract-int` [64bit]

```rust

const pi = 3.14159265359; // 'pi' is of type abstract-float
const two = 2;            // 'two' is of type abstract-int

// 'two_pi' is an abstract-float
// 'two' was implicitly converted from an abstract-int to abstract-float for the
// multiplication, which is performed with 64-bit floating point precision.
const two_pi = pi * two;

// Abstract-ints can implicitly convert to i32, u32, f32
const implicitly_convert_abstract_int_to_i32 : i32 = 100;
const implicitly_convert_abstract_int_to_u32 : u32 = 100;
const implicitly_convert_abstract_int_to_f32 : f32 = 100;

```

- vecNf -> 2, 3, 4

```
vec2f	is an alias to vec2<f32>.
vec3u	is an alias to vec3<u32>.
vec4i	is an alias to vec4<i32>.
```

- matrices are a tad bit different

```
const m2x3 = mat2x3f(1, 2, 3, 4, 5, 6);

const mul_s_by_m2x3 : mat2x3f = 10 * m2x3;

const mul_m2x3_by_s : mat2x3f = m2x3 * 10;

//             ╭      ╮   ╭                 ╮
//             │ 1  4 │   │ 1×9 + 2×8 + 3×7 │
// [9, 8, 7] × │ 2  5 │ = │ 4×9 + 5×8 + 6×7 │
//             │ 3  6 │   ╰                 ╯
//             ╰      ╯
const mul_v3_by_m2x3 : vec2f = vec3(9, 8, 7) * m2x3;

// ╭      ╮   ╭   ╮   ╭           ╮
// │ 1  4 │   │ 9 │   │ 1×9 + 4×8 │
// │ 2  5 │ × │ 8 │ = │ 2×9 + 5×8 │
// │ 3  6 │   ╰   ╯   │ 3×9 + 6×8 │
// ╰      ╯           ╰           ╯
const mul_m2x3_by_v2 : vec3f = m2x3 * vec2(9, 8);

const mul_m2x3_by_m4x2 : mat4x3f = m2x3 * mat4x2f(7, 8, 9, 10, 11, 12, 13, 14);
```

- wgsl supports 2x2 and 4x4 matrices

  - the notation is opposite of what is taught in mathematics class.

- Fixed sized arrays

```
const first_fibs = array<i32,7>(1,1,2,3,5,8,13);
```

- runtime sized arrays: They can only be used with storage buffer resources

```rust
@group(0) @binding(0) var<storage> weights: array<f32>;
```

## entry points

- `@compute` , `@fragment` , `@vertex`
- `@must_use` attribute makes it a compile time error if there is a statement that just is a call to that function.

## Structure

A structure type is a named grouping of member values. Each member has a name and a data type.

```
struct Vehicle {
        num_wheels: u32,
        mass_kg: f32,
    }
```

## Atomics

Atomics type help synchorize between different invocations executing a shader.

- Atomic operation only work on 32bit integers. so i32 or u32
- Atomic type can only appear in the store type for a variable in the workgroup or storage address space.

## Pointers

Pointer refers to the memory associated with all or part of a variable.
Ptr<AS,T,AM>

- `AS` is an address space
- `T` is a type, known as store type
- `AM` is an access mode.

```
alias ptr_to_i32_in_workgroup = ptr<workgroup, i32>;
alias ptr_to_u32_in_function = ptr<function, u32>;
alias ptr_to_f32_in_private = ptr<private, f32>;
alias ptr_to_vector_in_uniform = ptr<uniform, vec4f>;

alias ptr_to_f32_in_storage_buffer_r = ptr<storage, i32, read>;
alias ptr_to_f32_in_storage_buffer_default = ptr<storage, i32>; // Same as 'read'
alias ptr_to_f32_in_storage_buffer_rw = ptr<storage, i32, read_write>;
```

Using pointers is same as in Using pointers is same as in CUsing pointers is same as in CUsing pointers is same as in CUsing pointers is same as in CUsing pointers is same as in CUsing pointers is same as in CUsing pointers is same as in C

```
fn f() {
  var x: f32 = 1.5;
  let px = &x;  // Get a pointer to x
  *px = 3.0;    // Update x through px.
  // Now x is 3.0
}


var<private> age: f32;

fn happy_birthday() {
  let age_ptr = &age;       // Get a pointer.
  *age_ptr = *age_ptr + 1;  // Updates 'age'
}

fn main() {
  age = 18.0;
  happy_birthday();
  // Now age is 19.0
}
```

## Pointers as short names

## Address space

| Address space | Sharing among invocations                        | Default access mode | Notes                                                                           |
| ------------- | ------------------------------------------------ | ------------------- | ------------------------------------------------------------------------------- |
| function      | Same invocation only                             | read_write          |                                                                                 |
| private       | Same invocation only                             | read_write          |                                                                                 |
| workgroup     | Invocations in the same compute shader workgroup | read_write          | The element count of an outermost array may be a pipeline-overridable constant. |
| uniform       | Invocations in the same shader stage             | read                | For uniform buffer variables                                                    |
| storage       | Invocations in the same shader stage             | read                | For storage buffer variables                                                    |
| handle        | Invocations in the same shader stage             | read                | For sampler and texture variables.                                              |

## Expressions

Shader creation time --> Pipeline creation time --> Shader Execution Time

- constants evaluate at shader creation time.
  `@const` can be evaluated at shader creation time.
  constant expressions are evaluated at shader creation time, they can be used anywhere literal might be used

- override expressions are value expressions that are evaluated at `pipeline-creation` time.

  ```
  @id(0)    override has_point_light: bool = true;  // Algorithmic control
  @id(1200) override specular_param: f32 = 2.3;     // Numeric control
  ```

- runtime expressions are evaluated during the execution of shader.all identifiers that resolve to `var` and `let` variables are runtime expressions

## Variables

- A _variable_ represents a value stored in memory. Variables are declared with `var` keyword. Mutable objects are only mutable objects in WGSL.
- immutable variable are declared with `const`, `override` and `let` keywords.
- `var<private>`

## Let

- a `let` declaration gives a name a runtime immutable value
- a `let` can be declared within a function
- a `let` must have an initializer, and can have optional type.

## Control Flow

- If statements

  ```
  if a {
  } else if b {
  } else if c {
  } else {
  }
  ```

- Switch

  - condition must be concrete integer scalar type

  ```
    fn switch_case() -> u32 {
  switch a {
    case 1: {
      return 1;
    }
    // Multiple selectors for one block
    case 2, 3: {
      return 6;
    }
    case 4: {
      return 4;
    }
    // Lone default
    default: {
      return 5;
    }
  }
  }
  ```

## Binding Points

- `@group` is used to specify the group or set to which resource belongs. Group is collection of resources that are used together in a shader.
- `@group` takes two argument, group number and binding number

- group must be positive integer
- binding must be non negative integer
- same resource can't be bound to multiple bindings.
  By grouping resources, GPU can fetch them in single operation.

## Shader Stages

Pipeline desribes the work to be performed in GPU, as a sequence of stages. Some of them are programmable.
Dispatch command to run compute shader stage.

Draw command has

- vertex shader
- fragment shader

## Compute Shader

- Workgroup is set of invocations which concurrently execute a compute shader shader stage entry point, and share access
  to shader variables in the workgroup address space.

- Workgroup grid for compute shader is the set of points with integer coordinates (i,j,k) with

```
    0 <= i < workgroup_size_x
    0 <= j < workgroup_size_y
    0 <= k < workgroup_size_k
```

- one invocation for each point in workgroup grid
- local invocation id for each workgroup grid point
- Compute shader begins execution when a webGPU implementation removes a dispatch command from a queue and begins the work on GPU
- The compute shader grid for a particular dispatch is the set of points with integer coordinates (CSi,CSj,CSk) with:

```
    0 ≤ CSi < workgroup_size_x × group_count_x
    0 ≤ CSj < workgroup_size_y × group_count_y
    0 ≤ CSk < workgroup_size_z × group_count_z
```
