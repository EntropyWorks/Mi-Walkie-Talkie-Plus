package com.amap.api.col.sl;

import android.support.v4.os.EnvironmentCompat;
import java.util.Locale;

/* compiled from: Cgi */
public final class fa {
    private static fa p = null;
    public int a = 0;
    public int b = 0;
    public int c = 0;
    public int d = 0;
    public int e = 0;
    public int f = 0;
    public int g = 0;
    public int h = 0;
    public int i = 0;
    public int j = -113;
    public int k = 0;
    public short l = 0;
    public long m = 0;
    public boolean n = false;
    public boolean o = true;

    public fa(int i2, boolean z) {
        this.k = i2;
        this.n = z;
    }

    public final String toString() {
        String str = EnvironmentCompat.MEDIA_UNKNOWN;
        switch (this.k) {
            case 1:
                return String.format(Locale.CHINA, "GSM lac=%d, cid=%d, mnc=%s, valid=%b, sig=%d, age=%d, reg=%b", new Object[]{Integer.valueOf(this.c), Integer.valueOf(this.d), Integer.valueOf(this.b), Boolean.valueOf(this.o), Integer.valueOf(this.j), Short.valueOf(this.l), Boolean.valueOf(this.n)});
            case 2:
                return String.format(Locale.CHINA, "CDMA bid=%d, nid=%d, sid=%d, valid=%b, sig=%d, age=%d, reg=%b", new Object[]{Integer.valueOf(this.i), Integer.valueOf(this.h), Integer.valueOf(this.g), Boolean.valueOf(this.o), Integer.valueOf(this.j), Short.valueOf(this.l), Boolean.valueOf(this.n)});
            case 3:
                return String.format(Locale.CHINA, "LTE lac=%d, cid=%d, mnc=%s, valid=%b, sig=%d, age=%d, reg=%b", new Object[]{Integer.valueOf(this.c), Integer.valueOf(this.d), Integer.valueOf(this.b), Boolean.valueOf(this.o), Integer.valueOf(this.j), Short.valueOf(this.l), Boolean.valueOf(this.n)});
            case 4:
                return String.format(Locale.CHINA, "WCDMA lac=%d, cid=%d, mnc=%s, valid=%b, sig=%d, age=%d, reg=%b", new Object[]{Integer.valueOf(this.c), Integer.valueOf(this.d), Integer.valueOf(this.b), Boolean.valueOf(this.o), Integer.valueOf(this.j), Short.valueOf(this.l), Boolean.valueOf(this.n)});
            default:
                return str;
        }
    }

    public final boolean a(fa faVar) {
        if (faVar == null) {
            return false;
        }
        switch (faVar.k) {
            case 1:
                if (this.k == 1 && faVar.c == this.c && faVar.d == this.d && faVar.b == this.b) {
                    return true;
                }
                return false;
            case 2:
                if (this.k == 2 && faVar.i == this.i && faVar.h == this.h && faVar.g == this.g) {
                    return true;
                }
                return false;
            case 3:
                if (this.k == 3 && faVar.c == this.c && faVar.d == this.d && faVar.b == this.b) {
                    return true;
                }
                return false;
            case 4:
                if (this.k == 4 && faVar.c == this.c && faVar.d == this.d && faVar.b == this.b) {
                    return true;
                }
                return false;
            default:
                return false;
        }
    }

    public final int a() {
        return this.c;
    }

    public final int b() {
        return this.d;
    }

    public final int c() {
        return this.h;
    }

    public final int d() {
        return this.i;
    }

    public final int e() {
        return this.j;
    }
}