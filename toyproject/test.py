import cx_Oracle as oci

sid = 'XE'
host = '210.119.14.73'  # 외부에서 접속할 경우 변경
port = 1521
username = 'bookrentalshop'
password = '12345'

try:
    dsn = oci.makedsn(host, port, sid=sid)
    conn = oci.connect(user=username, password=password, dsn=dsn)
    cursor = conn.cursor()

    query = 'SELECT * FROM BOOKINFO'
    cursor.execute(query)

    for row in cursor:
        print(row)

    cursor.close()
    conn.close()
    print("✅ Oracle DB 연결 성공!")

except oci.DatabaseError as e:
    print(f"❌ 오류 발생: {e}")

