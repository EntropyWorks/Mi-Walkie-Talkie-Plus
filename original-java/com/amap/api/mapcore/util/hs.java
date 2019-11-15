package com.amap.api.mapcore.util;

import android.os.Build.VERSION;
import com.amap.api.mapcore.util.hp.a;
import com.amap.api.maps.AMapException;
import com.google.devtools.build.android.desugar.runtime.ThrowableExtension;
import java.io.DataOutputStream;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.net.ConnectException;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.Proxy;
import java.net.SocketException;
import java.net.SocketTimeoutException;
import java.net.URL;
import java.net.URLConnection;
import java.net.URLEncoder;
import java.net.UnknownHostException;
import java.util.Map;
import java.util.Map.Entry;
import java.util.UUID;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.HttpsURLConnection;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLSession;

/* compiled from: HttpUrlUtil */
public class hs {
    private static ht a;
    private int b;
    private int c;
    private boolean d;
    private SSLContext e;
    private Proxy f;
    private volatile boolean g;
    private long h;
    private long i;
    private String j;
    private a k;
    private HostnameVerifier l;

    private void b() {
        try {
            this.j = UUID.randomUUID().toString().replaceAll("-", "").toLowerCase();
        } catch (Throwable th) {
            gc.a(th, "ht", "ic");
        }
    }

    public static void a(ht htVar) {
        a = htVar;
    }

    hs(int i2, int i3, Proxy proxy, boolean z) {
        this(i2, i3, proxy, z, null);
    }

    hs(int i2, int i3, Proxy proxy, boolean z, a aVar) {
        this.g = false;
        this.h = -1;
        this.i = 0;
        this.l = new HostnameVerifier() {
            public boolean verify(String str, SSLSession sSLSession) {
                HostnameVerifier defaultHostnameVerifier = HttpsURLConnection.getDefaultHostnameVerifier();
                return defaultHostnameVerifier.verify("*.amap.com", sSLSession) || defaultHostnameVerifier.verify("*.apilocate.amap.com", sSLSession);
            }
        };
        this.b = i2;
        this.c = i3;
        this.f = proxy;
        this.d = z;
        this.k = aVar;
        b();
        if (z) {
            try {
                SSLContext instance = SSLContext.getInstance("TLS");
                instance.init(null, null, null);
                this.e = instance;
            } catch (Throwable th) {
                gc.a(th, "ht", "ne");
            }
        }
    }

    hs(int i2, int i3, Proxy proxy) {
        this(i2, i3, proxy, false);
    }

    /* access modifiers changed from: 0000 */
    public void a() {
        this.g = true;
    }

    /* access modifiers changed from: 0000 */
    public void a(long j2) {
        this.i = j2;
    }

    /* access modifiers changed from: 0000 */
    public void b(long j2) {
        this.h = j2;
    }

    /* JADX WARNING: type inference failed for: r1v0 */
    /* JADX WARNING: type inference failed for: r2v1 */
    /* JADX WARNING: type inference failed for: r2v2 */
    /* JADX WARNING: type inference failed for: r2v3, types: [java.net.HttpURLConnection] */
    /* JADX WARNING: type inference failed for: r1v1, types: [java.io.InputStream] */
    /* JADX WARNING: type inference failed for: r2v5, types: [java.io.InputStream] */
    /* JADX WARNING: type inference failed for: r1v5, types: [java.net.HttpURLConnection] */
    /* JADX WARNING: type inference failed for: r9v0 */
    /* JADX WARNING: type inference failed for: r1v6 */
    /* JADX WARNING: type inference failed for: r2v6 */
    /* JADX WARNING: type inference failed for: r9v1 */
    /* JADX WARNING: type inference failed for: r2v13 */
    /* JADX WARNING: type inference failed for: r1v8 */
    /* JADX WARNING: type inference failed for: r9v2 */
    /* JADX WARNING: type inference failed for: r2v14 */
    /* JADX WARNING: type inference failed for: r1v11 */
    /* JADX WARNING: type inference failed for: r1v16 */
    /* JADX WARNING: type inference failed for: r1v17 */
    /* JADX WARNING: type inference failed for: r1v18 */
    /* JADX WARNING: type inference failed for: r2v19 */
    /* access modifiers changed from: 0000 */
    /* JADX WARNING: Code restructure failed: missing block: B:45:0x00e4, code lost:
        r0 = th;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:46:0x00e5, code lost:
        r9 = r2;
        r2 = r1;
        r1 = r9;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:61:0x0114, code lost:
        r0 = th;
        r1 = r1;
        r2 = r2;
     */
    /* JADX WARNING: Failed to process nested try/catch */
    /* JADX WARNING: Multi-variable type inference failed */
    /* JADX WARNING: Removed duplicated region for block: B:61:0x0114 A[ExcHandler: all (th java.lang.Throwable), Splitter:B:19:0x004f] */
    /* JADX WARNING: Removed duplicated region for block: B:63:0x0117 A[SYNTHETIC, Splitter:B:63:0x0117] */
    /* JADX WARNING: Removed duplicated region for block: B:66:0x011c A[SYNTHETIC, Splitter:B:66:0x011c] */
    /* JADX WARNING: Unknown variable types count: 8 */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void a(java.lang.String r11, java.util.Map<java.lang.String, java.lang.String> r12, java.util.Map<java.lang.String, java.lang.String> r13, com.amap.api.mapcore.util.hr.a r14) {
        /*
            r10 = this;
            r1 = 0
            r0 = 1
            r8 = 1024(0x400, float:1.435E-42)
            r3 = 0
            r2 = 0
            r4 = 0
            if (r14 != 0) goto L_0x002f
            if (r1 == 0) goto L_0x000e
            r2.close()     // Catch:{ IOException -> 0x0014, Throwable -> 0x001d }
        L_0x000e:
            if (r1 == 0) goto L_0x0013
            r4.disconnect()     // Catch:{ Throwable -> 0x0026 }
        L_0x0013:
            return
        L_0x0014:
            r0 = move-exception
            java.lang.String r2 = "ht"
            java.lang.String r3 = "mdr"
            com.amap.api.mapcore.util.gc.a(r0, r2, r3)
            goto L_0x000e
        L_0x001d:
            r0 = move-exception
            java.lang.String r2 = "ht"
            java.lang.String r3 = "mdr"
            com.amap.api.mapcore.util.gc.a(r0, r2, r3)
            goto L_0x000e
        L_0x0026:
            r0 = move-exception
            java.lang.String r1 = "ht"
            java.lang.String r2 = "mdr"
            com.amap.api.mapcore.util.gc.a(r0, r1, r2)
            goto L_0x0013
        L_0x002f:
            java.lang.String r2 = a(r13)     // Catch:{ Throwable -> 0x0188, all -> 0x0180 }
            java.lang.StringBuffer r4 = new java.lang.StringBuffer     // Catch:{ Throwable -> 0x0188, all -> 0x0180 }
            r4.<init>()     // Catch:{ Throwable -> 0x0188, all -> 0x0180 }
            r4.append(r11)     // Catch:{ Throwable -> 0x0188, all -> 0x0180 }
            if (r2 == 0) goto L_0x0046
            java.lang.String r5 = "?"
            java.lang.StringBuffer r5 = r4.append(r5)     // Catch:{ Throwable -> 0x0188, all -> 0x0180 }
            r5.append(r2)     // Catch:{ Throwable -> 0x0188, all -> 0x0180 }
        L_0x0046:
            java.lang.String r2 = r4.toString()     // Catch:{ Throwable -> 0x0188, all -> 0x0180 }
            r4 = 0
            java.net.HttpURLConnection r2 = r10.a(r2, r12, r4)     // Catch:{ Throwable -> 0x0188, all -> 0x0180 }
            java.lang.StringBuilder r4 = new java.lang.StringBuilder     // Catch:{ Throwable -> 0x018c, all -> 0x0114 }
            r4.<init>()     // Catch:{ Throwable -> 0x018c, all -> 0x0114 }
            java.lang.String r5 = "bytes="
            java.lang.StringBuilder r4 = r4.append(r5)     // Catch:{ Throwable -> 0x018c, all -> 0x0114 }
            long r6 = r10.i     // Catch:{ Throwable -> 0x018c, all -> 0x0114 }
            java.lang.StringBuilder r4 = r4.append(r6)     // Catch:{ Throwable -> 0x018c, all -> 0x0114 }
            java.lang.String r5 = "-"
            java.lang.StringBuilder r4 = r4.append(r5)     // Catch:{ Throwable -> 0x018c, all -> 0x0114 }
            java.lang.String r4 = r4.toString()     // Catch:{ Throwable -> 0x018c, all -> 0x0114 }
            java.lang.String r5 = "RANGE"
            r2.setRequestProperty(r5, r4)     // Catch:{ Throwable -> 0x018c, all -> 0x0114 }
            r2.connect()     // Catch:{ Throwable -> 0x018c, all -> 0x0114 }
            int r5 = r2.getResponseCode()     // Catch:{ Throwable -> 0x018c, all -> 0x0114 }
            r4 = 200(0xc8, float:2.8E-43)
            if (r5 == r4) goto L_0x0101
            r4 = r0
        L_0x007b:
            r6 = 206(0xce, float:2.89E-43)
            if (r5 == r6) goto L_0x0104
        L_0x007f:
            r0 = r0 & r4
            if (r0 == 0) goto L_0x00ab
            com.amap.api.mapcore.util.fn r0 = new com.amap.api.mapcore.util.fn     // Catch:{ Throwable -> 0x018c, all -> 0x0114 }
            java.lang.StringBuilder r3 = new java.lang.StringBuilder     // Catch:{ Throwable -> 0x018c, all -> 0x0114 }
            r3.<init>()     // Catch:{ Throwable -> 0x018c, all -> 0x0114 }
            java.lang.String r4 = "网络异常原因："
            java.lang.StringBuilder r3 = r3.append(r4)     // Catch:{ Throwable -> 0x018c, all -> 0x0114 }
            java.lang.String r4 = r2.getResponseMessage()     // Catch:{ Throwable -> 0x018c, all -> 0x0114 }
            java.lang.StringBuilder r3 = r3.append(r4)     // Catch:{ Throwable -> 0x018c, all -> 0x0114 }
            java.lang.String r4 = " 网络异常状态码："
            java.lang.StringBuilder r3 = r3.append(r4)     // Catch:{ Throwable -> 0x018c, all -> 0x0114 }
            java.lang.StringBuilder r3 = r3.append(r5)     // Catch:{ Throwable -> 0x018c, all -> 0x0114 }
            java.lang.String r3 = r3.toString()     // Catch:{ Throwable -> 0x018c, all -> 0x0114 }
            r0.<init>(r3)     // Catch:{ Throwable -> 0x018c, all -> 0x0114 }
            r14.a(r0)     // Catch:{ Throwable -> 0x018c, all -> 0x0114 }
        L_0x00ab:
            java.io.InputStream r1 = r2.getInputStream()     // Catch:{ Throwable -> 0x018c, all -> 0x0114 }
            r0 = 1024(0x400, float:1.435E-42)
            byte[] r0 = new byte[r0]     // Catch:{ Throwable -> 0x00e4, all -> 0x0114 }
        L_0x00b3:
            boolean r3 = java.lang.Thread.interrupted()     // Catch:{ Throwable -> 0x00e4, all -> 0x0114 }
            if (r3 != 0) goto L_0x0120
            boolean r3 = r10.g     // Catch:{ Throwable -> 0x00e4, all -> 0x0114 }
            if (r3 != 0) goto L_0x0120
            r3 = 0
            r4 = 1024(0x400, float:1.435E-42)
            int r3 = r1.read(r0, r3, r4)     // Catch:{ Throwable -> 0x00e4, all -> 0x0114 }
            if (r3 <= 0) goto L_0x0120
            long r4 = r10.h     // Catch:{ Throwable -> 0x00e4, all -> 0x0114 }
            r6 = -1
            int r4 = (r4 > r6 ? 1 : (r4 == r6 ? 0 : -1))
            if (r4 == 0) goto L_0x00d6
            long r4 = r10.i     // Catch:{ Throwable -> 0x00e4, all -> 0x0114 }
            long r6 = r10.h     // Catch:{ Throwable -> 0x00e4, all -> 0x0114 }
            int r4 = (r4 > r6 ? 1 : (r4 == r6 ? 0 : -1))
            if (r4 >= 0) goto L_0x0120
        L_0x00d6:
            if (r3 != r8) goto L_0x0107
            long r4 = r10.i     // Catch:{ Throwable -> 0x00e4, all -> 0x0114 }
            r14.a(r0, r4)     // Catch:{ Throwable -> 0x00e4, all -> 0x0114 }
        L_0x00dd:
            long r4 = r10.i     // Catch:{ Throwable -> 0x00e4, all -> 0x0114 }
            long r6 = (long) r3     // Catch:{ Throwable -> 0x00e4, all -> 0x0114 }
            long r4 = r4 + r6
            r10.i = r4     // Catch:{ Throwable -> 0x00e4, all -> 0x0114 }
            goto L_0x00b3
        L_0x00e4:
            r0 = move-exception
            r9 = r2
            r2 = r1
            r1 = r9
        L_0x00e8:
            r14.a(r0)     // Catch:{ all -> 0x0183 }
            if (r2 == 0) goto L_0x00f0
            r2.close()     // Catch:{ IOException -> 0x0153, Throwable -> 0x015c }
        L_0x00f0:
            if (r1 == 0) goto L_0x0013
            r1.disconnect()     // Catch:{ Throwable -> 0x00f7 }
            goto L_0x0013
        L_0x00f7:
            r0 = move-exception
            java.lang.String r1 = "ht"
            java.lang.String r2 = "mdr"
            com.amap.api.mapcore.util.gc.a(r0, r1, r2)
            goto L_0x0013
        L_0x0101:
            r4 = r3
            goto L_0x007b
        L_0x0104:
            r0 = r3
            goto L_0x007f
        L_0x0107:
            byte[] r4 = new byte[r3]     // Catch:{ Throwable -> 0x00e4, all -> 0x0114 }
            r5 = 0
            r6 = 0
            java.lang.System.arraycopy(r0, r5, r4, r6, r3)     // Catch:{ Throwable -> 0x00e4, all -> 0x0114 }
            long r6 = r10.i     // Catch:{ Throwable -> 0x00e4, all -> 0x0114 }
            r14.a(r4, r6)     // Catch:{ Throwable -> 0x00e4, all -> 0x0114 }
            goto L_0x00dd
        L_0x0114:
            r0 = move-exception
        L_0x0115:
            if (r1 == 0) goto L_0x011a
            r1.close()     // Catch:{ IOException -> 0x0165, Throwable -> 0x016e }
        L_0x011a:
            if (r2 == 0) goto L_0x011f
            r2.disconnect()     // Catch:{ Throwable -> 0x0177 }
        L_0x011f:
            throw r0
        L_0x0120:
            boolean r0 = r10.g     // Catch:{ Throwable -> 0x00e4, all -> 0x0114 }
            if (r0 == 0) goto L_0x013d
            r14.d()     // Catch:{ Throwable -> 0x00e4, all -> 0x0114 }
        L_0x0127:
            if (r1 == 0) goto L_0x012c
            r1.close()     // Catch:{ IOException -> 0x0141, Throwable -> 0x014a }
        L_0x012c:
            if (r2 == 0) goto L_0x0013
            r2.disconnect()     // Catch:{ Throwable -> 0x0133 }
            goto L_0x0013
        L_0x0133:
            r0 = move-exception
            java.lang.String r1 = "ht"
            java.lang.String r2 = "mdr"
            com.amap.api.mapcore.util.gc.a(r0, r1, r2)
            goto L_0x0013
        L_0x013d:
            r14.e()     // Catch:{ Throwable -> 0x00e4, all -> 0x0114 }
            goto L_0x0127
        L_0x0141:
            r0 = move-exception
            java.lang.String r1 = "ht"
            java.lang.String r3 = "mdr"
            com.amap.api.mapcore.util.gc.a(r0, r1, r3)
            goto L_0x012c
        L_0x014a:
            r0 = move-exception
            java.lang.String r1 = "ht"
            java.lang.String r3 = "mdr"
            com.amap.api.mapcore.util.gc.a(r0, r1, r3)
            goto L_0x012c
        L_0x0153:
            r0 = move-exception
            java.lang.String r2 = "ht"
            java.lang.String r3 = "mdr"
            com.amap.api.mapcore.util.gc.a(r0, r2, r3)
            goto L_0x00f0
        L_0x015c:
            r0 = move-exception
            java.lang.String r2 = "ht"
            java.lang.String r3 = "mdr"
            com.amap.api.mapcore.util.gc.a(r0, r2, r3)
            goto L_0x00f0
        L_0x0165:
            r1 = move-exception
            java.lang.String r3 = "ht"
            java.lang.String r4 = "mdr"
            com.amap.api.mapcore.util.gc.a(r1, r3, r4)
            goto L_0x011a
        L_0x016e:
            r1 = move-exception
            java.lang.String r3 = "ht"
            java.lang.String r4 = "mdr"
            com.amap.api.mapcore.util.gc.a(r1, r3, r4)
            goto L_0x011a
        L_0x0177:
            r1 = move-exception
            java.lang.String r2 = "ht"
            java.lang.String r3 = "mdr"
            com.amap.api.mapcore.util.gc.a(r1, r2, r3)
            goto L_0x011f
        L_0x0180:
            r0 = move-exception
            r2 = r1
            goto L_0x0115
        L_0x0183:
            r0 = move-exception
            r9 = r1
            r1 = r2
            r2 = r9
            goto L_0x0115
        L_0x0188:
            r0 = move-exception
            r2 = r1
            goto L_0x00e8
        L_0x018c:
            r0 = move-exception
            r9 = r2
            r2 = r1
            r1 = r9
            goto L_0x00e8
        */
        throw new UnsupportedOperationException("Method not decompiled: com.amap.api.mapcore.util.hs.a(java.lang.String, java.util.Map, java.util.Map, com.amap.api.mapcore.util.hr$a):void");
    }

    /* access modifiers changed from: 0000 */
    /* JADX WARNING: Code restructure failed: missing block: B:17:0x003c, code lost:
        throw new com.amap.api.mapcore.util.fn(com.amap.api.maps.AMapException.ERROR_CONNECTION);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:22:?, code lost:
        r1.disconnect();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:27:0x004f, code lost:
        throw new com.amap.api.mapcore.util.fn("url异常 - MalformedURLException");
     */
    /* JADX WARNING: Code restructure failed: missing block: B:30:0x0058, code lost:
        throw new com.amap.api.mapcore.util.fn("未知主机 - UnKnowHostException");
     */
    /* JADX WARNING: Code restructure failed: missing block: B:33:0x0061, code lost:
        throw new com.amap.api.mapcore.util.fn(com.amap.api.maps.AMapException.ERROR_SOCKET);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:36:0x006a, code lost:
        throw new com.amap.api.mapcore.util.fn("socket 连接超时 - SocketTimeoutException");
     */
    /* JADX WARNING: Code restructure failed: missing block: B:39:0x0073, code lost:
        throw new com.amap.api.mapcore.util.fn(com.amap.api.maps.AMapException.ERROR_UNKNOWN);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:42:0x007c, code lost:
        throw new com.amap.api.mapcore.util.fn("IO 操作异常 - IOException");
     */
    /* JADX WARNING: Code restructure failed: missing block: B:43:0x007d, code lost:
        r1 = move-exception;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:44:0x007e, code lost:
        r4 = r1;
        r1 = r0;
        r0 = r4;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:47:0x0082, code lost:
        r0 = th;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:49:0x0084, code lost:
        r1 = move-exception;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:50:0x0085, code lost:
        r4 = r1;
        r1 = r0;
        r0 = r4;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:53:0x0093, code lost:
        r1 = move-exception;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:54:0x0094, code lost:
        com.amap.api.mapcore.util.gc.a(r1, "ht", "mgr");
     */
    /* JADX WARNING: Code restructure failed: missing block: B:55:0x009c, code lost:
        r1 = move-exception;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:56:0x009d, code lost:
        r4 = r1;
        r1 = r0;
        r0 = r4;
     */
    /* JADX WARNING: Failed to process nested try/catch */
    /* JADX WARNING: Removed duplicated region for block: B:14:0x0034 A[ExcHandler: ConnectException (e java.net.ConnectException), Splitter:B:1:0x0001] */
    /* JADX WARNING: Removed duplicated region for block: B:21:0x0043 A[SYNTHETIC, Splitter:B:21:0x0043] */
    /* JADX WARNING: Removed duplicated region for block: B:24:0x0047 A[ExcHandler: MalformedURLException (e java.net.MalformedURLException), Splitter:B:1:0x0001] */
    /* JADX WARNING: Removed duplicated region for block: B:28:0x0050 A[Catch:{ ConnectException -> 0x0034, MalformedURLException -> 0x0047, UnknownHostException -> 0x0050, SocketException -> 0x0059, SocketTimeoutException -> 0x0062, InterruptedIOException -> 0x006b, IOException -> 0x0074, fn -> 0x00a6, Throwable -> 0x00a1, all -> 0x003d }, ExcHandler: UnknownHostException (e java.net.UnknownHostException), Splitter:B:1:0x0001] */
    /* JADX WARNING: Removed duplicated region for block: B:31:0x0059 A[Catch:{ ConnectException -> 0x0034, MalformedURLException -> 0x0047, UnknownHostException -> 0x0050, SocketException -> 0x0059, SocketTimeoutException -> 0x0062, InterruptedIOException -> 0x006b, IOException -> 0x0074, fn -> 0x00a6, Throwable -> 0x00a1, all -> 0x003d }, ExcHandler: SocketException (e java.net.SocketException), Splitter:B:1:0x0001] */
    /* JADX WARNING: Removed duplicated region for block: B:34:0x0062 A[Catch:{ ConnectException -> 0x0034, MalformedURLException -> 0x0047, UnknownHostException -> 0x0050, SocketException -> 0x0059, SocketTimeoutException -> 0x0062, InterruptedIOException -> 0x006b, IOException -> 0x0074, fn -> 0x00a6, Throwable -> 0x00a1, all -> 0x003d }, ExcHandler: SocketTimeoutException (e java.net.SocketTimeoutException), Splitter:B:1:0x0001] */
    /* JADX WARNING: Removed duplicated region for block: B:37:0x006b A[Catch:{ ConnectException -> 0x0034, MalformedURLException -> 0x0047, UnknownHostException -> 0x0050, SocketException -> 0x0059, SocketTimeoutException -> 0x0062, InterruptedIOException -> 0x006b, IOException -> 0x0074, fn -> 0x00a6, Throwable -> 0x00a1, all -> 0x003d }, ExcHandler: InterruptedIOException (e java.io.InterruptedIOException), Splitter:B:1:0x0001] */
    /* JADX WARNING: Removed duplicated region for block: B:40:0x0074 A[Catch:{ ConnectException -> 0x0034, MalformedURLException -> 0x0047, UnknownHostException -> 0x0050, SocketException -> 0x0059, SocketTimeoutException -> 0x0062, InterruptedIOException -> 0x006b, IOException -> 0x0074, fn -> 0x00a6, Throwable -> 0x00a1, all -> 0x003d }, ExcHandler: IOException (e java.io.IOException), Splitter:B:1:0x0001] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public com.amap.api.mapcore.util.hx a(java.lang.String r6, java.util.Map<java.lang.String, java.lang.String> r7, java.util.Map<java.lang.String, java.lang.String> r8) throws com.amap.api.mapcore.util.fn {
        /*
            r5 = this;
            r0 = 0
            java.lang.String r1 = a(r8)     // Catch:{ ConnectException -> 0x0034, MalformedURLException -> 0x0047, UnknownHostException -> 0x0050, SocketException -> 0x0059, SocketTimeoutException -> 0x0062, InterruptedIOException -> 0x006b, IOException -> 0x0074, fn -> 0x007d, Throwable -> 0x0084, all -> 0x009c }
            java.lang.StringBuffer r2 = new java.lang.StringBuffer     // Catch:{ ConnectException -> 0x0034, MalformedURLException -> 0x0047, UnknownHostException -> 0x0050, SocketException -> 0x0059, SocketTimeoutException -> 0x0062, InterruptedIOException -> 0x006b, IOException -> 0x0074, fn -> 0x007d, Throwable -> 0x0084, all -> 0x009c }
            r2.<init>()     // Catch:{ ConnectException -> 0x0034, MalformedURLException -> 0x0047, UnknownHostException -> 0x0050, SocketException -> 0x0059, SocketTimeoutException -> 0x0062, InterruptedIOException -> 0x006b, IOException -> 0x0074, fn -> 0x007d, Throwable -> 0x0084, all -> 0x009c }
            r2.append(r6)     // Catch:{ ConnectException -> 0x0034, MalformedURLException -> 0x0047, UnknownHostException -> 0x0050, SocketException -> 0x0059, SocketTimeoutException -> 0x0062, InterruptedIOException -> 0x006b, IOException -> 0x0074, fn -> 0x007d, Throwable -> 0x0084, all -> 0x009c }
            if (r1 == 0) goto L_0x0018
            java.lang.String r3 = "?"
            java.lang.StringBuffer r3 = r2.append(r3)     // Catch:{ ConnectException -> 0x0034, MalformedURLException -> 0x0047, UnknownHostException -> 0x0050, SocketException -> 0x0059, SocketTimeoutException -> 0x0062, InterruptedIOException -> 0x006b, IOException -> 0x0074, fn -> 0x007d, Throwable -> 0x0084, all -> 0x009c }
            r3.append(r1)     // Catch:{ ConnectException -> 0x0034, MalformedURLException -> 0x0047, UnknownHostException -> 0x0050, SocketException -> 0x0059, SocketTimeoutException -> 0x0062, InterruptedIOException -> 0x006b, IOException -> 0x0074, fn -> 0x007d, Throwable -> 0x0084, all -> 0x009c }
        L_0x0018:
            java.lang.String r1 = r2.toString()     // Catch:{ ConnectException -> 0x0034, MalformedURLException -> 0x0047, UnknownHostException -> 0x0050, SocketException -> 0x0059, SocketTimeoutException -> 0x0062, InterruptedIOException -> 0x006b, IOException -> 0x0074, fn -> 0x007d, Throwable -> 0x0084, all -> 0x009c }
            r2 = 0
            java.net.HttpURLConnection r0 = r5.a(r1, r7, r2)     // Catch:{ ConnectException -> 0x0034, MalformedURLException -> 0x0047, UnknownHostException -> 0x0050, SocketException -> 0x0059, SocketTimeoutException -> 0x0062, InterruptedIOException -> 0x006b, IOException -> 0x0074, fn -> 0x007d, Throwable -> 0x0084, all -> 0x009c }
            com.amap.api.mapcore.util.hx r1 = r5.a(r0)     // Catch:{ ConnectException -> 0x0034, MalformedURLException -> 0x0047, UnknownHostException -> 0x0050, SocketException -> 0x0059, SocketTimeoutException -> 0x0062, InterruptedIOException -> 0x006b, IOException -> 0x0074, fn -> 0x00a6, Throwable -> 0x00a1 }
            if (r0 == 0) goto L_0x002a
            r0.disconnect()     // Catch:{ Throwable -> 0x002b }
        L_0x002a:
            return r1
        L_0x002b:
            r0 = move-exception
            java.lang.String r2 = "ht"
            java.lang.String r3 = "mgr"
            com.amap.api.mapcore.util.gc.a(r0, r2, r3)
            goto L_0x002a
        L_0x0034:
            r1 = move-exception
            com.amap.api.mapcore.util.fn r1 = new com.amap.api.mapcore.util.fn     // Catch:{ all -> 0x003d }
            java.lang.String r2 = "http连接失败 - ConnectionException"
            r1.<init>(r2)     // Catch:{ all -> 0x003d }
            throw r1     // Catch:{ all -> 0x003d }
        L_0x003d:
            r1 = move-exception
            r4 = r1
            r1 = r0
            r0 = r4
        L_0x0041:
            if (r1 == 0) goto L_0x0046
            r1.disconnect()     // Catch:{ Throwable -> 0x0093 }
        L_0x0046:
            throw r0
        L_0x0047:
            r1 = move-exception
            com.amap.api.mapcore.util.fn r1 = new com.amap.api.mapcore.util.fn     // Catch:{ all -> 0x003d }
            java.lang.String r2 = "url异常 - MalformedURLException"
            r1.<init>(r2)     // Catch:{ all -> 0x003d }
            throw r1     // Catch:{ all -> 0x003d }
        L_0x0050:
            r1 = move-exception
            com.amap.api.mapcore.util.fn r1 = new com.amap.api.mapcore.util.fn     // Catch:{ all -> 0x003d }
            java.lang.String r2 = "未知主机 - UnKnowHostException"
            r1.<init>(r2)     // Catch:{ all -> 0x003d }
            throw r1     // Catch:{ all -> 0x003d }
        L_0x0059:
            r1 = move-exception
            com.amap.api.mapcore.util.fn r1 = new com.amap.api.mapcore.util.fn     // Catch:{ all -> 0x003d }
            java.lang.String r2 = "socket 连接异常 - SocketException"
            r1.<init>(r2)     // Catch:{ all -> 0x003d }
            throw r1     // Catch:{ all -> 0x003d }
        L_0x0062:
            r1 = move-exception
            com.amap.api.mapcore.util.fn r1 = new com.amap.api.mapcore.util.fn     // Catch:{ all -> 0x003d }
            java.lang.String r2 = "socket 连接超时 - SocketTimeoutException"
            r1.<init>(r2)     // Catch:{ all -> 0x003d }
            throw r1     // Catch:{ all -> 0x003d }
        L_0x006b:
            r1 = move-exception
            com.amap.api.mapcore.util.fn r1 = new com.amap.api.mapcore.util.fn     // Catch:{ all -> 0x003d }
            java.lang.String r2 = "未知的错误"
            r1.<init>(r2)     // Catch:{ all -> 0x003d }
            throw r1     // Catch:{ all -> 0x003d }
        L_0x0074:
            r1 = move-exception
            com.amap.api.mapcore.util.fn r1 = new com.amap.api.mapcore.util.fn     // Catch:{ all -> 0x003d }
            java.lang.String r2 = "IO 操作异常 - IOException"
            r1.<init>(r2)     // Catch:{ all -> 0x003d }
            throw r1     // Catch:{ all -> 0x003d }
        L_0x007d:
            r1 = move-exception
            r4 = r1
            r1 = r0
            r0 = r4
        L_0x0081:
            throw r0     // Catch:{ all -> 0x0082 }
        L_0x0082:
            r0 = move-exception
            goto L_0x0041
        L_0x0084:
            r1 = move-exception
            r4 = r1
            r1 = r0
            r0 = r4
        L_0x0088:
            com.google.devtools.build.android.desugar.runtime.ThrowableExtension.printStackTrace(r0)     // Catch:{ all -> 0x0082 }
            com.amap.api.mapcore.util.fn r0 = new com.amap.api.mapcore.util.fn     // Catch:{ all -> 0x0082 }
            java.lang.String r2 = "未知的错误"
            r0.<init>(r2)     // Catch:{ all -> 0x0082 }
            throw r0     // Catch:{ all -> 0x0082 }
        L_0x0093:
            r1 = move-exception
            java.lang.String r2 = "ht"
            java.lang.String r3 = "mgr"
            com.amap.api.mapcore.util.gc.a(r1, r2, r3)
            goto L_0x0046
        L_0x009c:
            r1 = move-exception
            r4 = r1
            r1 = r0
            r0 = r4
            goto L_0x0041
        L_0x00a1:
            r1 = move-exception
            r4 = r1
            r1 = r0
            r0 = r4
            goto L_0x0088
        L_0x00a6:
            r1 = move-exception
            r4 = r1
            r1 = r0
            r0 = r4
            goto L_0x0081
        */
        throw new UnsupportedOperationException("Method not decompiled: com.amap.api.mapcore.util.hs.a(java.lang.String, java.util.Map, java.util.Map):com.amap.api.mapcore.util.hx");
    }

    /* access modifiers changed from: 0000 */
    public hx a(String str, Map<String, String> map, byte[] bArr) throws fn {
        HttpURLConnection httpURLConnection = null;
        try {
            HttpURLConnection a2 = a(str, map, true);
            if (bArr != null && bArr.length > 0) {
                DataOutputStream dataOutputStream = new DataOutputStream(a2.getOutputStream());
                dataOutputStream.write(bArr);
                dataOutputStream.close();
            }
            hx a3 = a(a2);
            if (a2 != null) {
                try {
                    a2.disconnect();
                } catch (Throwable th) {
                    gc.a(th, "ht", "mPt");
                }
            }
            return a3;
        } catch (ConnectException e2) {
            ThrowableExtension.printStackTrace(e2);
            throw new fn(AMapException.ERROR_CONNECTION);
        } catch (MalformedURLException e3) {
            ThrowableExtension.printStackTrace(e3);
            throw new fn("url异常 - MalformedURLException");
        } catch (UnknownHostException e4) {
            ThrowableExtension.printStackTrace(e4);
            throw new fn("未知主机 - UnKnowHostException");
        } catch (SocketException e5) {
            ThrowableExtension.printStackTrace(e5);
            throw new fn(AMapException.ERROR_SOCKET);
        } catch (SocketTimeoutException e6) {
            ThrowableExtension.printStackTrace(e6);
            throw new fn("socket 连接超时 - SocketTimeoutException");
        } catch (InterruptedIOException e7) {
            throw new fn(AMapException.ERROR_UNKNOWN);
        } catch (IOException e8) {
            ThrowableExtension.printStackTrace(e8);
            throw new fn("IO 操作异常 - IOException");
        } catch (fn e9) {
            gc.a((Throwable) e9, "ht", "mPt");
            throw e9;
        } catch (Throwable th2) {
            if (httpURLConnection != null) {
                try {
                    httpURLConnection.disconnect();
                } catch (Throwable th3) {
                    gc.a(th3, "ht", "mPt");
                }
            }
            throw th2;
        }
    }

    /* access modifiers changed from: 0000 */
    public HttpURLConnection a(String str, Map<String, String> map, boolean z) throws IOException {
        HttpURLConnection httpURLConnection;
        fs.b();
        URLConnection uRLConnection = null;
        URL url = new URL(str);
        if (this.k != null) {
            uRLConnection = this.k.a(this.f, url);
        }
        if (uRLConnection == null) {
            if (this.f != null) {
                uRLConnection = url.openConnection(this.f);
            } else {
                uRLConnection = url.openConnection();
            }
        }
        if (this.d) {
            httpURLConnection = (HttpsURLConnection) uRLConnection;
            ((HttpsURLConnection) httpURLConnection).setSSLSocketFactory(this.e.getSocketFactory());
            ((HttpsURLConnection) httpURLConnection).setHostnameVerifier(this.l);
        } else {
            httpURLConnection = (HttpURLConnection) uRLConnection;
        }
        if (VERSION.SDK != null && VERSION.SDK_INT > 13) {
            httpURLConnection.setRequestProperty("Connection", "close");
        }
        a(map, httpURLConnection);
        if (z) {
            httpURLConnection.setRequestMethod("POST");
            httpURLConnection.setUseCaches(false);
            httpURLConnection.setDoInput(true);
            httpURLConnection.setDoOutput(true);
        } else {
            httpURLConnection.setRequestMethod("GET");
            httpURLConnection.setDoInput(true);
        }
        return httpURLConnection;
    }

    /* JADX WARNING: type inference failed for: r2v0 */
    /* JADX WARNING: type inference failed for: r1v1 */
    /* JADX WARNING: type inference failed for: r1v2 */
    /* JADX WARNING: type inference failed for: r1v3, types: [java.io.InputStream] */
    /* JADX WARNING: type inference failed for: r2v4 */
    /* JADX WARNING: type inference failed for: r1v5 */
    /* JADX WARNING: type inference failed for: r9v0 */
    /* JADX WARNING: type inference failed for: r1v6 */
    /* JADX WARNING: type inference failed for: r1v9 */
    /* JADX WARNING: type inference failed for: r1v10 */
    /* JADX WARNING: type inference failed for: r1v12 */
    /* JADX WARNING: type inference failed for: r1v13 */
    /* JADX WARNING: type inference failed for: r9v1 */
    /* JADX WARNING: type inference failed for: r1v15 */
    /* JADX WARNING: type inference failed for: r2v7 */
    /* JADX WARNING: type inference failed for: r2v8, types: [java.io.InputStream] */
    /* JADX WARNING: type inference failed for: r5v13, types: [java.util.zip.GZIPInputStream] */
    /* JADX WARNING: type inference failed for: r1v19 */
    /* JADX WARNING: type inference failed for: r2v11 */
    /* JADX WARNING: type inference failed for: r2v13 */
    /* JADX WARNING: type inference failed for: r2v15 */
    /* JADX WARNING: type inference failed for: r2v17 */
    /* JADX WARNING: type inference failed for: r1v21 */
    /* JADX WARNING: type inference failed for: r2v18 */
    /* JADX WARNING: Code restructure failed: missing block: B:15:0x006c, code lost:
        r1 = 0;
        r3 = null;
        r4 = null;
        r2 = r2;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:23:?, code lost:
        r4.close();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:26:?, code lost:
        r3.close();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:29:?, code lost:
        r2.close();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:32:?, code lost:
        r1.close();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:74:0x0101, code lost:
        r4 = move-exception;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:75:0x0102, code lost:
        com.amap.api.mapcore.util.gc.a(r4, "ht", "par");
     */
    /* JADX WARNING: Code restructure failed: missing block: B:76:0x010b, code lost:
        r3 = move-exception;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:77:0x010c, code lost:
        com.amap.api.mapcore.util.gc.a(r3, "ht", "par");
     */
    /* JADX WARNING: Code restructure failed: missing block: B:78:0x0115, code lost:
        r2 = move-exception;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:79:0x0116, code lost:
        com.amap.api.mapcore.util.gc.a(r2, "ht", "par");
     */
    /* JADX WARNING: Code restructure failed: missing block: B:80:0x011f, code lost:
        r1 = move-exception;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:81:0x0120, code lost:
        com.amap.api.mapcore.util.gc.a(r1, "ht", "par");
     */
    /* JADX WARNING: Code restructure failed: missing block: B:90:0x014d, code lost:
        r0 = th;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:91:0x014e, code lost:
        r1 = 0;
        r3 = null;
        r4 = null;
        r2 = r2;
     */
    /* JADX WARNING: Failed to process nested try/catch */
    /* JADX WARNING: Multi-variable type inference failed */
    /* JADX WARNING: Removed duplicated region for block: B:11:0x002b A[SYNTHETIC, Splitter:B:11:0x002b] */
    /* JADX WARNING: Removed duplicated region for block: B:22:0x007d A[SYNTHETIC, Splitter:B:22:0x007d] */
    /* JADX WARNING: Removed duplicated region for block: B:25:0x0082 A[SYNTHETIC, Splitter:B:25:0x0082] */
    /* JADX WARNING: Removed duplicated region for block: B:28:0x0087 A[SYNTHETIC, Splitter:B:28:0x0087] */
    /* JADX WARNING: Removed duplicated region for block: B:31:0x008c A[SYNTHETIC, Splitter:B:31:0x008c] */
    /* JADX WARNING: Removed duplicated region for block: B:34:0x0090 A[SYNTHETIC, Splitter:B:34:0x0090] */
    /* JADX WARNING: Removed duplicated region for block: B:90:0x014d A[ExcHandler: all (th java.lang.Throwable), Splitter:B:1:0x0003] */
    /* JADX WARNING: Unknown variable types count: 8 */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private com.amap.api.mapcore.util.hx a(java.net.HttpURLConnection r11) throws com.amap.api.mapcore.util.fn, java.io.IOException {
        /*
            r10 = this;
            r2 = 0
            java.lang.String r1 = ""
            r11.connect()     // Catch:{ IOException -> 0x0162, all -> 0x014d }
            java.util.Map r6 = r11.getHeaderFields()     // Catch:{ IOException -> 0x0162, all -> 0x014d }
            int r3 = r11.getResponseCode()     // Catch:{ IOException -> 0x0162, all -> 0x014d }
            if (r6 == 0) goto L_0x0172
            java.lang.String r0 = "gsid"
            java.lang.Object r0 = r6.get(r0)     // Catch:{ IOException -> 0x0162, all -> 0x014d }
            java.util.List r0 = (java.util.List) r0     // Catch:{ IOException -> 0x0162, all -> 0x014d }
            if (r0 == 0) goto L_0x0172
            int r4 = r0.size()     // Catch:{ IOException -> 0x0162, all -> 0x014d }
            if (r4 <= 0) goto L_0x0172
            r4 = 0
            java.lang.Object r0 = r0.get(r4)     // Catch:{ IOException -> 0x0162, all -> 0x014d }
            java.lang.String r0 = (java.lang.String) r0     // Catch:{ IOException -> 0x0162, all -> 0x014d }
        L_0x0027:
            r1 = 200(0xc8, float:2.8E-43)
            if (r3 == r1) goto L_0x0090
            com.amap.api.mapcore.util.fn r1 = new com.amap.api.mapcore.util.fn     // Catch:{ IOException -> 0x006b, all -> 0x014d }
            java.lang.StringBuilder r4 = new java.lang.StringBuilder     // Catch:{ IOException -> 0x006b, all -> 0x014d }
            r4.<init>()     // Catch:{ IOException -> 0x006b, all -> 0x014d }
            java.lang.String r5 = "网络异常原因："
            java.lang.StringBuilder r4 = r4.append(r5)     // Catch:{ IOException -> 0x006b, all -> 0x014d }
            java.lang.String r5 = r11.getResponseMessage()     // Catch:{ IOException -> 0x006b, all -> 0x014d }
            java.lang.StringBuilder r4 = r4.append(r5)     // Catch:{ IOException -> 0x006b, all -> 0x014d }
            java.lang.String r5 = " 网络异常状态码："
            java.lang.StringBuilder r4 = r4.append(r5)     // Catch:{ IOException -> 0x006b, all -> 0x014d }
            java.lang.StringBuilder r4 = r4.append(r3)     // Catch:{ IOException -> 0x006b, all -> 0x014d }
            java.lang.String r5 = "  "
            java.lang.StringBuilder r4 = r4.append(r5)     // Catch:{ IOException -> 0x006b, all -> 0x014d }
            java.lang.StringBuilder r4 = r4.append(r0)     // Catch:{ IOException -> 0x006b, all -> 0x014d }
            java.lang.String r5 = " "
            java.lang.StringBuilder r4 = r4.append(r5)     // Catch:{ IOException -> 0x006b, all -> 0x014d }
            java.lang.String r5 = r10.j     // Catch:{ IOException -> 0x006b, all -> 0x014d }
            java.lang.StringBuilder r4 = r4.append(r5)     // Catch:{ IOException -> 0x006b, all -> 0x014d }
            java.lang.String r4 = r4.toString()     // Catch:{ IOException -> 0x006b, all -> 0x014d }
            r1.<init>(r4, r0)     // Catch:{ IOException -> 0x006b, all -> 0x014d }
            r1.a(r3)     // Catch:{ IOException -> 0x006b, all -> 0x014d }
            throw r1     // Catch:{ IOException -> 0x006b, all -> 0x014d }
        L_0x006b:
            r1 = move-exception
            r1 = r2
            r3 = r2
            r4 = r2
        L_0x006f:
            com.amap.api.mapcore.util.fn r5 = new com.amap.api.mapcore.util.fn     // Catch:{ all -> 0x0077 }
            java.lang.String r6 = "IO 操作异常 - IOException"
            r5.<init>(r6, r0)     // Catch:{ all -> 0x0077 }
            throw r5     // Catch:{ all -> 0x0077 }
        L_0x0077:
            r0 = move-exception
            r9 = r1
            r1 = r2
            r2 = r9
        L_0x007b:
            if (r4 == 0) goto L_0x0080
            r4.close()     // Catch:{ Throwable -> 0x0101 }
        L_0x0080:
            if (r3 == 0) goto L_0x0085
            r3.close()     // Catch:{ Throwable -> 0x010b }
        L_0x0085:
            if (r2 == 0) goto L_0x008a
            r2.close()     // Catch:{ Throwable -> 0x0115 }
        L_0x008a:
            if (r1 == 0) goto L_0x008f
            r1.close()     // Catch:{ Throwable -> 0x011f }
        L_0x008f:
            throw r0
        L_0x0090:
            java.io.ByteArrayOutputStream r4 = new java.io.ByteArrayOutputStream     // Catch:{ IOException -> 0x006b, all -> 0x014d }
            r4.<init>()     // Catch:{ IOException -> 0x006b, all -> 0x014d }
            java.io.InputStream r3 = r11.getInputStream()     // Catch:{ IOException -> 0x0169, all -> 0x0153 }
            java.io.PushbackInputStream r1 = new java.io.PushbackInputStream     // Catch:{ IOException -> 0x016e, all -> 0x0158 }
            r5 = 2
            r1.<init>(r3, r5)     // Catch:{ IOException -> 0x016e, all -> 0x0158 }
            r5 = 2
            byte[] r5 = new byte[r5]     // Catch:{ all -> 0x015c }
            r1.read(r5)     // Catch:{ all -> 0x015c }
            r1.unread(r5)     // Catch:{ all -> 0x015c }
            r7 = 0
            byte r7 = r5[r7]     // Catch:{ all -> 0x015c }
            r8 = 31
            if (r7 != r8) goto L_0x00ce
            r7 = 1
            byte r5 = r5[r7]     // Catch:{ all -> 0x015c }
            r7 = -117(0xffffffffffffff8b, float:NaN)
            if (r5 != r7) goto L_0x00ce
            java.util.zip.GZIPInputStream r5 = new java.util.zip.GZIPInputStream     // Catch:{ all -> 0x015c }
            r5.<init>(r1)     // Catch:{ all -> 0x015c }
            r2 = r5
        L_0x00bc:
            r5 = 1024(0x400, float:1.435E-42)
            byte[] r5 = new byte[r5]     // Catch:{ IOException -> 0x00cc }
        L_0x00c0:
            int r7 = r2.read(r5)     // Catch:{ IOException -> 0x00cc }
            r8 = -1
            if (r7 == r8) goto L_0x00d0
            r8 = 0
            r4.write(r5, r8, r7)     // Catch:{ IOException -> 0x00cc }
            goto L_0x00c0
        L_0x00cc:
            r5 = move-exception
            goto L_0x006f
        L_0x00ce:
            r2 = r1
            goto L_0x00bc
        L_0x00d0:
            com.amap.api.mapcore.util.ht r5 = a     // Catch:{ IOException -> 0x00cc }
            if (r5 == 0) goto L_0x00d9
            com.amap.api.mapcore.util.ht r5 = a     // Catch:{ IOException -> 0x00cc }
            r5.a()     // Catch:{ IOException -> 0x00cc }
        L_0x00d9:
            com.amap.api.mapcore.util.hx r5 = new com.amap.api.mapcore.util.hx     // Catch:{ IOException -> 0x00cc }
            r5.<init>()     // Catch:{ IOException -> 0x00cc }
            byte[] r7 = r4.toByteArray()     // Catch:{ IOException -> 0x00cc }
            r5.a = r7     // Catch:{ IOException -> 0x00cc }
            r5.b = r6     // Catch:{ IOException -> 0x00cc }
            java.lang.String r6 = r10.j     // Catch:{ IOException -> 0x00cc }
            r5.c = r6     // Catch:{ IOException -> 0x00cc }
            r5.d = r0     // Catch:{ IOException -> 0x00cc }
            if (r4 == 0) goto L_0x00f1
            r4.close()     // Catch:{ Throwable -> 0x0129 }
        L_0x00f1:
            if (r3 == 0) goto L_0x00f6
            r3.close()     // Catch:{ Throwable -> 0x0132 }
        L_0x00f6:
            if (r1 == 0) goto L_0x00fb
            r1.close()     // Catch:{ Throwable -> 0x013b }
        L_0x00fb:
            if (r2 == 0) goto L_0x0100
            r2.close()     // Catch:{ Throwable -> 0x0144 }
        L_0x0100:
            return r5
        L_0x0101:
            r4 = move-exception
            java.lang.String r5 = "ht"
            java.lang.String r6 = "par"
            com.amap.api.mapcore.util.gc.a(r4, r5, r6)
            goto L_0x0080
        L_0x010b:
            r3 = move-exception
            java.lang.String r4 = "ht"
            java.lang.String r5 = "par"
            com.amap.api.mapcore.util.gc.a(r3, r4, r5)
            goto L_0x0085
        L_0x0115:
            r2 = move-exception
            java.lang.String r3 = "ht"
            java.lang.String r4 = "par"
            com.amap.api.mapcore.util.gc.a(r2, r3, r4)
            goto L_0x008a
        L_0x011f:
            r1 = move-exception
            java.lang.String r2 = "ht"
            java.lang.String r3 = "par"
            com.amap.api.mapcore.util.gc.a(r1, r2, r3)
            goto L_0x008f
        L_0x0129:
            r0 = move-exception
            java.lang.String r4 = "ht"
            java.lang.String r6 = "par"
            com.amap.api.mapcore.util.gc.a(r0, r4, r6)
            goto L_0x00f1
        L_0x0132:
            r0 = move-exception
            java.lang.String r3 = "ht"
            java.lang.String r4 = "par"
            com.amap.api.mapcore.util.gc.a(r0, r3, r4)
            goto L_0x00f6
        L_0x013b:
            r0 = move-exception
            java.lang.String r1 = "ht"
            java.lang.String r3 = "par"
            com.amap.api.mapcore.util.gc.a(r0, r1, r3)
            goto L_0x00fb
        L_0x0144:
            r0 = move-exception
            java.lang.String r1 = "ht"
            java.lang.String r2 = "par"
            com.amap.api.mapcore.util.gc.a(r0, r1, r2)
            goto L_0x0100
        L_0x014d:
            r0 = move-exception
            r1 = r2
            r3 = r2
            r4 = r2
            goto L_0x007b
        L_0x0153:
            r0 = move-exception
            r1 = r2
            r3 = r2
            goto L_0x007b
        L_0x0158:
            r0 = move-exception
            r1 = r2
            goto L_0x007b
        L_0x015c:
            r0 = move-exception
            r9 = r1
            r1 = r2
            r2 = r9
            goto L_0x007b
        L_0x0162:
            r0 = move-exception
            r0 = r1
            r3 = r2
            r4 = r2
            r1 = r2
            goto L_0x006f
        L_0x0169:
            r1 = move-exception
            r1 = r2
            r3 = r2
            goto L_0x006f
        L_0x016e:
            r1 = move-exception
            r1 = r2
            goto L_0x006f
        L_0x0172:
            r0 = r1
            goto L_0x0027
        */
        throw new UnsupportedOperationException("Method not decompiled: com.amap.api.mapcore.util.hs.a(java.net.HttpURLConnection):com.amap.api.mapcore.util.hx");
    }

    private void a(Map<String, String> map, HttpURLConnection httpURLConnection) {
        if (map != null) {
            for (String str : map.keySet()) {
                httpURLConnection.addRequestProperty(str, (String) map.get(str));
            }
        }
        try {
            httpURLConnection.addRequestProperty("csid", this.j);
        } catch (Throwable th) {
            gc.a(th, "ht", "adh");
        }
        httpURLConnection.setConnectTimeout(this.b);
        httpURLConnection.setReadTimeout(this.c);
    }

    static String a(Map<String, String> map) {
        if (map == null) {
            return null;
        }
        StringBuilder sb = new StringBuilder();
        for (Entry entry : map.entrySet()) {
            String str = (String) entry.getKey();
            String str2 = (String) entry.getValue();
            if (str2 == null) {
                str2 = "";
            }
            if (sb.length() > 0) {
                sb.append("&");
            }
            sb.append(URLEncoder.encode(str));
            sb.append("=");
            sb.append(URLEncoder.encode(str2));
        }
        return sb.toString();
    }
}