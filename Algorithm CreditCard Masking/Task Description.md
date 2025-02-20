### **Masking: Hiding Credit Card Information**

#### **Problem Statement**
Write a function `maskify(_ string: String) -> String` that takes a string as input and returns a modified version where all characters except the last four are replaced with the `#` symbol. If the input string has fewer than four characters, it should remain unchanged.

#### **Functionality**
- If the string contains **fewer than four** characters, return it as-is.
- If the string contains **four or more** characters, replace all but the last four characters with `#`.
- Preserve the last four characters in their original form.

#### **Example Inputs and Outputs**
| Input          | Output      |
|---------------|------------|
| `"123456789"` | `"#####6789"` |
| `"abcd"`      | `"abcd"` |
| `"helloworld"` | `"######orld"` |
| `"Hi!"`       | `"Hi!"` |
| `""`          | `""` |

#### **Constraints**
- The function should handle an empty string as input.
- The function should work for any combination of letters, digits, or special characters.
- The solution should efficiently modify the string while adhering to Swift's string-handling principles.
