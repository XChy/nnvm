i32 main() {
entry95:  pred()
  br bb %long_func.while.body
long_func.while.body:  pred(long_func.while.exit66, entry95)
  ans.phi99124199 = phi [bb %long_func.while.exit66, i32 %188, bb %entry95, i32 0]
  c.phi123198 = phi [bb %long_func.while.exit66, i32 %188, bb %entry95, i32 1]
  al.phi122197 = phi [bb %long_func.while.exit66, i32 %ans.phi99124199, bb %entry95, i32 1]
  br bb %long_func.while.body32
long_func.while.body32:  pred(long_func.while.body)
  ans.phi101134195 = phi [bb %long_func.while.body, i32 0]
  i.phi104133194 = phi [bb %long_func.while.body, i32 0]
  x.phi107132193 = phi [bb %long_func.while.body, i32 %al.phi122197]
  111138 = and i32 %x.phi107132193, i32 1
  112139 = icmp ne i32 %111138, i32 0
  br i1 %112139, bb %long_func.then, bb %long_func.if.exit
long_func.then:  pred(long_func.while.body32)
  185 = shl i32 %i.phi104133194, i32 2
  46146 = ptradd ptr @SHIFT_TABLE, i32 %185
  46.load147 = load i32 from ptr %46146
  48148 = add i32 %ans.phi101134195, i32 %46.load147
  br bb %long_func.if.exit
long_func.if.exit:  pred(long_func.while.body32, long_func.then)
  ans.phi100151 = phi [bb %long_func.while.body32, i32 %ans.phi101134195, bb %long_func.then, i32 %48148]
  51152 = sdiv i32 %x.phi107132193, i32 2
  54153 = add i32 %i.phi104133194, i32 1
  call void putint(i32 2)
  35135 = icmp slt i32 %54153, i32 2
  br bb %long_func.while.body32.iter1
long_func.while.body65:  pred(long_func.while.body32_exclu_exit)
  ans.phi98159191 = phi [bb %long_func.while.body32_exclu_exit, i32 0]
  i.phi158190 = phi [bb %long_func.while.body32_exclu_exit, i32 0]
  x.phi157189 = phi [bb %long_func.while.body32_exclu_exit, i32 %184]
  115163 = and i32 %x.phi157189, i32 1
  116164 = icmp ne i32 %115163, i32 0
  br i1 %116164, bb %long_func.then73, bb %long_func.if.exit74
long_func.while.exit66:  pred(long_func.while.body65_exclu_exit)
  188 = phi [bb %long_func.while.body65_exclu_exit, i32 %ans.phi175]
  24125 = icmp ne i32 %188, i32 0
  br i1 %24125, bb %long_func.while.body, bb %long_func.while.body_exclu_exit
long_func.then73:  pred(long_func.while.body65)
  186 = shl i32 %i.phi158190, i32 2
  79170 = ptradd ptr @SHIFT_TABLE, i32 %186
  79.load171 = load i32 from ptr %79170
  81172 = add i32 %ans.phi98159191, i32 %79.load171
  br bb %long_func.if.exit74
long_func.if.exit74:  pred(long_func.while.body65, long_func.then73)
  ans.phi175 = phi [bb %long_func.while.body65, i32 %ans.phi98159191, bb %long_func.then73, i32 %81172]
  84176 = sdiv i32 %x.phi157189, i32 2
  87177 = add i32 %i.phi158190, i32 1
  call void putint(i32 4)
  68160 = icmp slt i32 %87177, i32 2
  br bb %long_func.while.body65.iter1
long_func.while.body32_exclu_exit:  pred(long_func.if.exit.iter1)
  184 = shl i32 %c.phi123198, i32 1
  br bb %long_func.while.body65
long_func.while.body65_exclu_exit:  pred(long_func.if.exit74.iter1)
  br bb %long_func.while.exit66
long_func.while.body_exclu_exit:  pred(long_func.while.exit66)
  ret i32 0
long_func.if.exit74.iter1:  pred(long_func.while.body65.iter1, long_func.then73.iter1)
  ans.phi175216 = phi [bb %long_func.while.body65.iter1, i32 %ans.phi98159191223, bb %long_func.then73.iter1, i32 %81172233]
  84176217 = sdiv i32 %x.phi157189225, i32 2
  87177218 = add i32 %i.phi158190224, i32 1
  call void putint(i32 4)
  68160220 = icmp slt i32 %87177218, i32 2
  br bb %long_func.while.body65_exclu_exit
long_func.while.body65.iter1:  pred(long_func.if.exit74)
  ans.phi98159191223 = phi [bb %long_func.if.exit74, i32 %ans.phi175]
  i.phi158190224 = phi [bb %long_func.if.exit74, i32 %87177]
  x.phi157189225 = phi [bb %long_func.if.exit74, i32 %84176]
  115163226 = and i32 %x.phi157189225, i32 1
  116164227 = icmp ne i32 %115163226, i32 0
  br i1 %116164227, bb %long_func.then73.iter1, bb %long_func.if.exit74.iter1
long_func.then73.iter1:  pred(long_func.while.body65.iter1)
  186230 = shl i32 %i.phi158190224, i32 2
  79170231 = ptradd ptr @SHIFT_TABLE, i32 %186230
  79.load171232 = load i32 from ptr %79170231
  81172233 = add i32 %ans.phi98159191223, i32 %79.load171232
  br bb %long_func.if.exit74.iter1
long_func.then.iter1:  pred(long_func.while.body32.iter1)
  185236 = shl i32 %i.phi104133194243, i32 2
  46146237 = ptradd ptr @SHIFT_TABLE, i32 %185236
  46.load147238 = load i32 from ptr %46146237
  48148239 = add i32 %ans.phi101134195242, i32 %46.load147238
  br bb %long_func.if.exit.iter1
long_func.while.body32.iter1:  pred(long_func.if.exit)
  ans.phi101134195242 = phi [bb %long_func.if.exit, i32 %ans.phi100151]
  i.phi104133194243 = phi [bb %long_func.if.exit, i32 %54153]
  x.phi107132193244 = phi [bb %long_func.if.exit, i32 %51152]
  111138245 = and i32 %x.phi107132193244, i32 1
  112139246 = icmp ne i32 %111138245, i32 0
  br i1 %112139246, bb %long_func.then.iter1, bb %long_func.if.exit.iter1
long_func.if.exit.iter1:  pred(long_func.then.iter1, long_func.while.body32.iter1)
  ans.phi100151249 = phi [bb %long_func.while.body32.iter1, i32 %ans.phi101134195242, bb %long_func.then.iter1, i32 %48148239]
  51152250 = sdiv i32 %x.phi107132193244, i32 2
  54153251 = add i32 %i.phi104133194243, i32 1
  call void putint(i32 2)
  35135253 = icmp slt i32 %54153251, i32 2
  br bb %long_func.while.body32_exclu_exit
}