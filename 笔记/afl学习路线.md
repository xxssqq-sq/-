## Fuzz学习路线总结
1. 熟练阅读AFL源码，我写了一个cpp版的afl，可debug，用那个配合clion单步调试学习最佳
https://github.com/google/AFL

2. 学习afl-libprotobuf-mutator，掌握如何将afl和protobuf结合，提供结构化变异能力
https://github.com/thebabush/afl-libprotobuf-mutator

关于结构化变异，参考
https://www.youtube.com/watch?v=xzG0pLM4Q64

3. 浏览器fuzz学习
AST fuzz
https://github.com/SoftSec-KAIST/CodeAlchemist
https://github.com/sslab-gatech/DIE

IL fuzz
https://www.anquanke.com/post/id/214761
https://github.com/s3team/Squirrel
https://github.com/googleprojectzero/fuzzilli