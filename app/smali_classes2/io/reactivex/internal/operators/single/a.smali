.class public final Lio/reactivex/internal/operators/single/a;
.super Lio/reactivex/s;
.source "SingleMap.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/single/a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/s",
        "<TR;>;"
    }
.end annotation


# instance fields
.field final a:Lio/reactivex/u;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/u",
            "<+TT;>;"
        }
    .end annotation
.end field

.field final b:Lio/reactivex/b/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/b/g",
            "<-TT;+TR;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/reactivex/u;Lio/reactivex/b/g;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/u",
            "<+TT;>;",
            "Lio/reactivex/b/g",
            "<-TT;+TR;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Lio/reactivex/s;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/single/a;->a:Lio/reactivex/u;

    iput-object p2, p0, Lio/reactivex/internal/operators/single/a;->b:Lio/reactivex/b/g;

    return-void
.end method


# virtual methods
.method protected b(Lio/reactivex/t;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/t",
            "<-TR;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lio/reactivex/internal/operators/single/a;->a:Lio/reactivex/u;

    new-instance v1, Lio/reactivex/internal/operators/single/a$a;

    iget-object v2, p0, Lio/reactivex/internal/operators/single/a;->b:Lio/reactivex/b/g;

    invoke-direct {v1, p1, v2}, Lio/reactivex/internal/operators/single/a$a;-><init>(Lio/reactivex/t;Lio/reactivex/b/g;)V

    invoke-interface {v0, v1}, Lio/reactivex/u;->a(Lio/reactivex/t;)V

    return-void
.end method
