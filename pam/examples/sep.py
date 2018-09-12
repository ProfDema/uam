import os
import re

reg_ex = '([a-zA-Z]+(?: [a-zA-Z]+)*)'

for folder in os.listdir('submissions copy'):
    a2 = open('submissions copy/'+folder+'/a2.sql','r')
    qno = 0
    query = []
    print("working on "+folder)
    for line in a2:
        #if line[:8].lower() == '-- query':
        rg = re.search(reg_ex, line)
        if rg and rg.group(0).lower() == 'query':
           if qno > 0:
              fname = ('submissions copy/'+folder+'/q{}.sql').format(qno)
              out = open(fname, 'w')
              print(fname)
              out.write('truncate query{};\n'.format(qno))
              [out.write(x+'\n') for x in query]
              out.write('select * from query{};\n'.format(qno))
           query = []
           qno = qno + 1
        else:
           query.append(line)
    fname = ('submissions copy/'+folder+'/q{}.sql').format(qno)
    out = open(fname, 'w')
    print(fname,'*')
    out.write('truncate query{};\n'.format(qno))
    [out.write(x+'\n') for x in query]
    out.write('select * from query{};\n'.format(qno))
    out.close()
